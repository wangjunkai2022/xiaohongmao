package com.koushikdutta.async.http.body;

import com.koushikdutta.async.http.BasicNameValuePair;
import com.koushikdutta.async.http.NameValuePair;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class FilePart extends StreamPart {

    /* renamed from: e  reason: collision with root package name */
    File f44714e;

    public FilePart(String str, File file) {
        super(str, (int) file.length(), new ArrayList<NameValuePair>(file) { // from class: com.koushikdutta.async.http.body.FilePart.1

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ File f44715a;

            {
                this.f44715a = file;
                add(new BasicNameValuePair("filename", file.getName()));
            }
        });
        this.f44714e = file;
    }

    @Override // com.koushikdutta.async.http.body.StreamPart
    protected InputStream i() throws IOException {
        File file = this.f44714e;
        return h.b.a(new FileInputStream(file), file);
    }

    public String toString() {
        return c();
    }
}
