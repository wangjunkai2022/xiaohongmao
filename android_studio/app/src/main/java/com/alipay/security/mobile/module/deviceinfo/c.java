package com.alipay.security.mobile.module.deviceinfo;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
class c implements FileFilter {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f7017a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(d dVar) {
        this.f7017a = dVar;
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return Pattern.matches("cpu[0-9]+", file.getName());
    }
}
