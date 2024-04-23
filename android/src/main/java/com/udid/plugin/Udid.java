package com.udid.plugin;

import android.content.Context;
import android.provider.Settings;
import android.util.Log;

public class Udid {

    private Context context; // Adding a Context member variable to be used in getAndroidId()

    public Udid(Context context) {
        this.context = context; // Constructor to initialize the context
    }

    public String getUniqueId() {
        return Settings.Secure.getString(this.context.getContentResolver(),
                android.provider.Settings.Secure.ANDROID_ID);
    }
}
