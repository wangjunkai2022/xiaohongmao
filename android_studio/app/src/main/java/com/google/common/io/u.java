package com.google.common.io;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.LinkedList;
import java.util.Queue;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: LineReader.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private final Readable f34511a;
    @NullableDecl

    /* renamed from: b  reason: collision with root package name */
    private final Reader f34512b;

    /* renamed from: c  reason: collision with root package name */
    private final CharBuffer f34513c;

    /* renamed from: d  reason: collision with root package name */
    private final char[] f34514d;

    /* renamed from: e  reason: collision with root package name */
    private final Queue<String> f34515e;

    /* renamed from: f  reason: collision with root package name */
    private final s f34516f;

    /* compiled from: LineReader.java */
    /* loaded from: classes2.dex */
    class a extends s {
        a() {
        }

        @Override // com.google.common.io.s
        protected void d(String str, String str2) {
            u.this.f34515e.add(str);
        }
    }

    public u(Readable readable) {
        CharBuffer e4 = k.e();
        this.f34513c = e4;
        this.f34514d = e4.array();
        this.f34515e = new LinkedList();
        this.f34516f = new a();
        this.f34511a = (Readable) com.google.common.base.a0.E(readable);
        this.f34512b = readable instanceof Reader ? (Reader) readable : null;
    }

    @CanIgnoreReturnValue
    public String b() throws IOException {
        int read;
        while (true) {
            if (this.f34515e.peek() != null) {
                break;
            }
            this.f34513c.clear();
            Reader reader = this.f34512b;
            if (reader != null) {
                char[] cArr = this.f34514d;
                read = reader.read(cArr, 0, cArr.length);
            } else {
                read = this.f34511a.read(this.f34513c);
            }
            if (read == -1) {
                this.f34516f.b();
                break;
            }
            this.f34516f.a(this.f34514d, 0, read);
        }
        return this.f34515e.poll();
    }
}
