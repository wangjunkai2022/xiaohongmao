package com.qennnsad.aknkaksd.data.interceptor;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: WebViewInterceptedError.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u000f\u0010\f¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/data/interceptor/WebViewInterceptedError;", "Ljava/io/IOException;", "", "a", "I", "getCode", "()I", "code", "", "b", "Ljava/lang/String;", "getMsg", "()Ljava/lang/String;", "msg", "c", "getRedirectLocation", "redirectLocation", "<init>", "(ILjava/lang/String;Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class WebViewInterceptedError extends IOException {

    /* renamed from: a  reason: collision with root package name */
    private final int f47689a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final String f47690b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private final String f47691c;

    public /* synthetic */ WebViewInterceptedError(int i4, String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, str, (i10 & 4) != 0 ? null : str2);
    }

    public final int getCode() {
        return this.f47689a;
    }

    @g
    public final String getMsg() {
        return this.f47690b;
    }

    @h
    public final String getRedirectLocation() {
        return this.f47691c;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewInterceptedError(int i4, @g String msg, @h String str) {
        super(i4 + ": " + msg);
        Intrinsics.checkNotNullParameter(msg, "msg");
        this.f47689a = i4;
        this.f47690b = msg;
        this.f47691c = str;
    }
}
