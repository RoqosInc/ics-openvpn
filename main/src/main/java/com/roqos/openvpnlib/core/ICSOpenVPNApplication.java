/*
 * Copyright (c) 2012-2016 Arne Schwabe
 * Distributed under the GNU GPL v2 with additional terms. For full terms see the file doc/LICENSE.txt
 */

package com.roqos.openvpnlib.core;
import android.app.Application;

/*
import org.acra.ACRA;
import org.acra.ReportingInteractionMode;
import org.acra.annotation.ReportsCrashes;
*/

import com.roqos.openvpnlib.BuildConfig;
import com.roqos.openvpnlib.R;
import com.roqos.openvpnlib.core.PRNGFixes;

/*
@ReportsCrashes(
        formKey = "",
        formUri = "http://reports.roqos.com/report-icsopenvpn",
        reportType = org.acra.sender.HttpSender.Type.JSON,
        httpMethod = org.acra.sender.HttpSender.Method.PUT,
        formUriBasicAuthLogin="report-icsopenvpn",
        formUriBasicAuthPassword="Tohd4neiF9Ai!!!!111eleven",
        mode = ReportingInteractionMode.TOAST,
        resToastText = R.string.crash_toast_text
)
*/
public class ICSOpenVPNApplication extends Application {
    @Override
    public void onCreate() {
        super.onCreate();
        PRNGFixes.apply();

        if (BuildConfig.DEBUG) {
            //ACRA.init(this);
        }

        VpnStatus.initLogCache(getApplicationContext().getCacheDir());
    }
}
