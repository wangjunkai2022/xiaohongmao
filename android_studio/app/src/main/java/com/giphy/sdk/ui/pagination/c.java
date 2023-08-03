package com.giphy.sdk.ui.pagination;

import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: NetworkState.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0013\b\u0086\b\u0018\u0000 \"2\u00020\u0001:\u0001\u0011B\u001d\b\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b \u0010!J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u001f\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0004HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R*\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lcom/giphy/sdk/ui/pagination/c;", "", "Lcom/giphy/sdk/ui/pagination/Status;", "e", "", "f", "status", "msg", "g", "toString", "", "hashCode", "other", "", "equals", "Lkotlin/Function0;", "", "a", "Lkotlin/jvm/functions/Function0;", ContextChain.TAG_INFRA, "()Lkotlin/jvm/functions/Function0;", "l", "(Lkotlin/jvm/functions/Function0;)V", "callableAction", "b", "Lcom/giphy/sdk/ui/pagination/Status;", "k", "()Lcom/giphy/sdk/ui/pagination/Status;", "c", "Ljava/lang/String;", "j", "()Ljava/lang/String;", "<init>", "(Lcom/giphy/sdk/ui/pagination/Status;Ljava/lang/String;)V", "h", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class c {
    @h

    /* renamed from: a  reason: collision with root package name */
    private Function0<Unit> f18805a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final Status f18806b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private final String f18807c;
    @g

    /* renamed from: h  reason: collision with root package name */
    public static final a f18804h = new a(null);
    @g

    /* renamed from: d  reason: collision with root package name */
    private static final c f18800d = new c(Status.SUCCESS, null, 2, null);
    @g

    /* renamed from: e  reason: collision with root package name */
    private static final c f18801e = new c(Status.SUCCESS_INITIAL, null, 2, null);
    @g

    /* renamed from: f  reason: collision with root package name */
    private static final c f18802f = new c(Status.RUNNING, null, 2, null);
    @g

    /* renamed from: g  reason: collision with root package name */
    private static final c f18803g = new c(Status.RUNNING_INITIAL, null, 2, null);

    /* compiled from: NetworkState.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u000b\u0010\b\u001a\u0004\b\f\u0010\nR\u0017\u0010\r\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\u000e\u0010\nR\u0017\u0010\u000f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u000f\u0010\b\u001a\u0004\b\u0010\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/giphy/sdk/ui/pagination/c$a;", "", "", "msg", "Lcom/giphy/sdk/ui/pagination/c;", "a", "b", "LOADED", "Lcom/giphy/sdk/ui/pagination/c;", "c", "()Lcom/giphy/sdk/ui/pagination/c;", "LOADED_INITIAL", "d", "LOADING", "e", "LOADING_INITIAL", "f", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        @g
        public final c a(@h String str) {
            return new c(Status.FAILED, str, null);
        }

        @g
        public final c b(@h String str) {
            return new c(Status.FAILED_INITIAL, str, null);
        }

        @g
        public final c c() {
            return c.f18800d;
        }

        @g
        public final c d() {
            return c.f18801e;
        }

        @g
        public final c e() {
            return c.f18802f;
        }

        @g
        public final c f() {
            return c.f18803g;
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private c(Status status, String str) {
        this.f18806b = status;
        this.f18807c = str;
    }

    public static /* synthetic */ c h(c cVar, Status status, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            status = cVar.f18806b;
        }
        if ((i4 & 2) != 0) {
            str = cVar.f18807c;
        }
        return cVar.g(status, str);
    }

    @g
    public final Status e() {
        return this.f18806b;
    }

    public boolean equals(@h Object obj) {
        if (this != obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                return Intrinsics.areEqual(this.f18806b, cVar.f18806b) && Intrinsics.areEqual(this.f18807c, cVar.f18807c);
            }
            return false;
        }
        return true;
    }

    @h
    public final String f() {
        return this.f18807c;
    }

    @g
    public final c g(@g Status status, @h String str) {
        Intrinsics.checkNotNullParameter(status, "status");
        return new c(status, str);
    }

    public int hashCode() {
        Status status = this.f18806b;
        int hashCode = (status != null ? status.hashCode() : 0) * 31;
        String str = this.f18807c;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    @h
    public final Function0<Unit> i() {
        return this.f18805a;
    }

    @h
    public final String j() {
        return this.f18807c;
    }

    @g
    public final Status k() {
        return this.f18806b;
    }

    public final void l(@h Function0<Unit> function0) {
        this.f18805a = function0;
    }

    @g
    public String toString() {
        return "NetworkState(status=" + this.f18806b + ", msg=" + this.f18807c + ")";
    }

    public /* synthetic */ c(Status status, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(status, str);
    }

    /* synthetic */ c(Status status, String str, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(status, (i4 & 2) != 0 ? null : str);
    }
}
