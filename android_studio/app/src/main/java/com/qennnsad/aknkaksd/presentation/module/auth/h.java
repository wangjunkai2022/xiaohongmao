package com.qennnsad.aknkaksd.presentation.module.auth;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PredefinedLogins.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¨\u0006\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/h;", "", "Lcom/qennnsad/aknkaksd/presentation/module/auth/h$a;", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class h {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final h f51101a = new h();

    /* compiled from: PredefinedLogins.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u001d\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u000e\u001a\u0004\b\u0011\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/h$a;", "", "", "a", "b", com.qennnsad.aknkaksd.data.websocket.b.f47819k, "password", "c", "toString", "", "hashCode", "other", "", "equals", "Ljava/lang/String;", "e", "()Ljava/lang/String;", "f", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f51102a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final String f51103b;

        public a(@m8.g String login, @m8.g String password) {
            Intrinsics.checkNotNullParameter(login, "login");
            Intrinsics.checkNotNullParameter(password, "password");
            this.f51102a = login;
            this.f51103b = password;
        }

        public static /* synthetic */ a d(a aVar, String str, String str2, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                str = aVar.f51102a;
            }
            if ((i4 & 2) != 0) {
                str2 = aVar.f51103b;
            }
            return aVar.c(str, str2);
        }

        @m8.g
        public final String a() {
            return this.f51102a;
        }

        @m8.g
        public final String b() {
            return this.f51103b;
        }

        @m8.g
        public final a c(@m8.g String login, @m8.g String password) {
            Intrinsics.checkNotNullParameter(login, "login");
            Intrinsics.checkNotNullParameter(password, "password");
            return new a(login, password);
        }

        @m8.g
        public final String e() {
            return this.f51102a;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return Intrinsics.areEqual(this.f51102a, aVar.f51102a) && Intrinsics.areEqual(this.f51103b, aVar.f51103b);
            }
            return false;
        }

        @m8.g
        public final String f() {
            return this.f51103b;
        }

        public int hashCode() {
            return (this.f51102a.hashCode() * 31) + this.f51103b.hashCode();
        }

        @m8.g
        public String toString() {
            return "Credentials(login=" + this.f51102a + ", password=" + this.f51103b + ')';
        }
    }

    private h() {
    }

    @m8.h
    public final a a() {
        return null;
    }
}
