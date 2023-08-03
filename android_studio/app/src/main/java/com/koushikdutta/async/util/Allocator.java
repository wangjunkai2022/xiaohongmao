package com.koushikdutta.async.util;

import com.koushikdutta.async.ByteBufferList;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class Allocator {

    /* renamed from: a  reason: collision with root package name */
    final int f45126a;

    /* renamed from: b  reason: collision with root package name */
    int f45127b;

    /* renamed from: c  reason: collision with root package name */
    int f45128c;

    public Allocator(int i4) {
        this.f45127b = 0;
        this.f45128c = 4096;
        this.f45126a = i4;
    }

    public ByteBuffer a() {
        return b(this.f45127b);
    }

    public ByteBuffer b(int i4) {
        return ByteBufferList.y(Math.min(Math.max(i4, this.f45128c), this.f45126a));
    }

    public int c() {
        return this.f45126a;
    }

    public int d() {
        return this.f45128c;
    }

    public void e(int i4) {
        this.f45127b = i4;
    }

    public Allocator f(int i4) {
        this.f45128c = Math.max(0, i4);
        return this;
    }

    public void g(long j4) {
        this.f45127b = ((int) j4) * 2;
    }

    public Allocator() {
        this.f45127b = 0;
        this.f45128c = 4096;
        this.f45126a = ByteBufferList.f44237f;
    }
}
