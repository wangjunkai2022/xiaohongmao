package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.util.z0;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: GaplessInfoHolder.java */
/* loaded from: classes2.dex */
public final class w {

    /* renamed from: c  reason: collision with root package name */
    private static final String f23488c = "com.apple.iTunes";

    /* renamed from: d  reason: collision with root package name */
    private static final String f23489d = "iTunSMPB";

    /* renamed from: e  reason: collision with root package name */
    private static final Pattern f23490e = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a  reason: collision with root package name */
    public int f23491a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f23492b = -1;

    private boolean b(String str) {
        Matcher matcher = f23490e.matcher(str);
        if (matcher.find()) {
            try {
                int parseInt = Integer.parseInt((String) z0.k(matcher.group(1)), 16);
                int parseInt2 = Integer.parseInt((String) z0.k(matcher.group(2)), 16);
                if (parseInt > 0 || parseInt2 > 0) {
                    this.f23491a = parseInt;
                    this.f23492b = parseInt2;
                    return true;
                }
                return false;
            } catch (NumberFormatException unused) {
                return false;
            }
        }
        return false;
    }

    public boolean a() {
        return (this.f23491a == -1 || this.f23492b == -1) ? false : true;
    }

    public boolean c(Metadata metadata) {
        for (int i4 = 0; i4 < metadata.length(); i4++) {
            Metadata.Entry entry = metadata.get(i4);
            if (entry instanceof CommentFrame) {
                CommentFrame commentFrame = (CommentFrame) entry;
                if (f23489d.equals(commentFrame.description) && b(commentFrame.text)) {
                    return true;
                }
            } else if (entry instanceof InternalFrame) {
                InternalFrame internalFrame = (InternalFrame) entry;
                if (f23488c.equals(internalFrame.domain) && f23489d.equals(internalFrame.description) && b(internalFrame.text)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public boolean d(int i4) {
        int i10 = i4 >> 12;
        int i11 = i4 & 4095;
        if (i10 > 0 || i11 > 0) {
            this.f23491a = i10;
            this.f23492b = i11;
            return true;
        }
        return false;
    }
}
