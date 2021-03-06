/*
 * Copyright (c) 2012-2016 Arne Schwabe
 * Distributed under the GNU GPL v2 with additional terms. For full terms see the file doc/LICENSE.txt
 */

package com.roqos.openvpnlib;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;

import com.roqos.openvpnlib.core.Preferences;
import com.roqos.openvpnlib.core.ProfileManager;
import android.content.SharedPreferences;
import android.net.VpnService;
import android.preference.PreferenceManager;
import android.util.Log;
import android.widget.Toast;
import com.roqos.openvpnlib.core.VPNLaunchHelper;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;


public class OnBootReceiver extends BroadcastReceiver {



	// Debug: am broadcast -a android.intent.action.BOOT_COMPLETED
	@Override
	public void onReceive(Context context, Intent intent) {

//		final String action = intent.getAction();
//		SharedPreferences prefs = Preferences.getDefaultSharedPreferences(context);
//
//		boolean useStartOnBoot = prefs.getBoolean("restartvpnonboot", false);
//		if (!useStartOnBoot)
//			return;
//
//		if(Intent.ACTION_BOOT_COMPLETED.equals(action) || Intent.ACTION_MY_PACKAGE_REPLACED.equals(action)) {
//			VpnProfile bootProfile = ProfileManager.getAlwaysOnVPN(context);
//			if(bootProfile != null) {
//				launchVPN(bootProfile, context);
//			}
//		}


		final String action = intent.getAction();

		if(Intent.ACTION_BOOT_COMPLETED.equals(action) || Intent.ACTION_MY_PACKAGE_REPLACED.equals(action)) {
//			VpnProfile bootProfile = ProfileManager.getLastConnectedProfile(context, true);
			SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);

			boolean useStartOnBoot = prefs.getBoolean("restartvpnonboot", false);
			if(!useStartOnBoot) return;
			String protocol="", servername="", serverport="", username="vpnuser", password="password1", cacert="", clientcert="", clientkey="", tlscrypt="", renegSec = "";
			try {
				String vpnConfigStr = prefs.getString("vpnconfig", "");
				JSONArray vpnConfig = new JSONArray(vpnConfigStr);
				JSONObject server = vpnConfig.getJSONObject(0);
				JSONObject user = vpnConfig.getJSONObject(1);
				servername = server.getString("Hostname");
				serverport = server.getString("Port");
				protocol = server.getString("Protocol");
				username = user.getString("username");
				password = user.getString("password");
				cacert = "[[INLINE]]" + server.getString("CACertificate");
				if (server.has("tlsCrypt")) tlscrypt = server.getString("tlsCrypt");
				if (server.has("renegSec")) renegSec = server.getString("renegSec");

				VpnProfile vpnProfile = new VpnProfile("Roqos VPN");
				vpnProfile.clearDefaults();
				vpnProfile.mServerName = "unknown";
				vpnProfile.mAuth = "SHA1";
				vpnProfile.mCipher = "AES-256-CBC";
				vpnProfile.mAuthenticationType = 3;
				vpnProfile.mNobind = true;
				vpnProfile.mUseCustomConfig = true;
				vpnProfile.mUsePull = true;
				vpnProfile.mVerb = "3";
				// vpnProfile.mPersistTun = true;
				vpnProfile.mAllowLocalLAN = true;
				vpnProfile.mUsername = username;
				vpnProfile.mPassword = password;

				vpnProfile.mConnections[0].mServerName = servername;
				vpnProfile.mConnections[0].mServerPort = serverport;
				vpnProfile.mConnections[0].mUseUdp = protocol.equals("UDP");
				vpnProfile.mCaFilename = cacert;
				if (!tlscrypt.isEmpty()) {
					vpnProfile.mUseTLSAuth = true;
					vpnProfile.mTLSAuthDirection = "tls-crypt";
					vpnProfile.mTLSAuthFilename = "[[INLINE]]" + tlscrypt;
				}
				if (!renegSec.isEmpty()) { vpnProfile.mRenegSec = renegSec; }

				ProfileManager.getInstance(context).addProfile(vpnProfile);
				ProfileManager.setConnectedVpnProfile(context, vpnProfile);
				ProfileManager.getInstance(context).saveProfileList(context);
				ProfileManager.getInstance(context).saveProfile(context, vpnProfile);
				VpnService.prepare(context);
				launchVPN(vpnProfile, context);
			} catch (JSONException e) {
				e.printStackTrace();
			}
		}
	}

	void launchVPN(VpnProfile profile, Context context) {
//		Intent startVpnIntent = new Intent(Intent.ACTION_MAIN);
//		startVpnIntent.setClass(context, LaunchVPN.class);
//		startVpnIntent.putExtra(LaunchVPN.EXTRA_KEY,profile.getUUIDString());
//		startVpnIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
//		startVpnIntent.putExtra(LaunchVPN.EXTRA_HIDELOG, true);
//
//		context.startActivity(startVpnIntent);
		VPNLaunchHelper.startOpenVpn(profile, context);
	}
}
