package com.qennnsad.aknkaksd.domain.base;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ResponseAction.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0006\u0007\u0003R\u0014\u0010\u0005\u001a\u00020\u00028&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\u0082\u0001\u0003\b\t\n¨\u0006\u000b"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/base/a;", "", "", "c", "()Ljava/lang/String;", "message", "a", "b", "Lcom/qennnsad/aknkaksd/domain/base/a$a;", "Lcom/qennnsad/aknkaksd/domain/base/a$b;", "Lcom/qennnsad/aknkaksd/domain/base/a$c;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface a {

    /* compiled from: ResponseAction.kt */
    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0002HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003R\u001a\u0010\u0004\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/base/a$a;", "Lcom/qennnsad/aknkaksd/domain/base/a;", "", "a", "message", "b", "toString", "", "hashCode", "", "other", "", "equals", "Ljava/lang/String;", "c", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* renamed from: com.qennnsad.aknkaksd.domain.base.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0404a implements a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f47926a;

        public C0404a(@m8.g String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            this.f47926a = message;
        }

        public static /* synthetic */ C0404a d(C0404a c0404a, String str, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                str = c0404a.c();
            }
            return c0404a.b(str);
        }

        @m8.g
        public final String a() {
            return c();
        }

        @m8.g
        public final C0404a b(@m8.g String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new C0404a(message);
        }

        @Override // com.qennnsad.aknkaksd.domain.base.a
        @m8.g
        public String c() {
            return this.f47926a;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0404a) && Intrinsics.areEqual(c(), ((C0404a) obj).c());
        }

        public int hashCode() {
            return c().hashCode();
        }

        @m8.g
        public String toString() {
            return "FrequentWarning(message=" + c() + ')';
        }
    }

    /* compiled from: ResponseAction.kt */
    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u001d\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u000f\u001a\u0004\b\u0012\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/base/a$b;", "Lcom/qennnsad/aknkaksd/domain/base/a;", "", "a", "b", "url", "message", "d", "toString", "", "hashCode", "", "other", "", "equals", "Ljava/lang/String;", "f", "()Ljava/lang/String;", "c", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b implements a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f47927a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final String f47928b;

        public b(@m8.g String url, @m8.g String message) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(message, "message");
            this.f47927a = url;
            this.f47928b = message;
        }

        public static /* synthetic */ b e(b bVar, String str, String str2, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                str = bVar.f47927a;
            }
            if ((i4 & 2) != 0) {
                str2 = bVar.c();
            }
            return bVar.d(str, str2);
        }

        @m8.g
        public final String a() {
            return this.f47927a;
        }

        @m8.g
        public final String b() {
            return c();
        }

        @Override // com.qennnsad.aknkaksd.domain.base.a
        @m8.g
        public String c() {
            return this.f47928b;
        }

        @m8.g
        public final b d(@m8.g String url, @m8.g String message) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(message, "message");
            return new b(url, message);
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                b bVar = (b) obj;
                return Intrinsics.areEqual(this.f47927a, bVar.f47927a) && Intrinsics.areEqual(c(), bVar.c());
            }
            return false;
        }

        @m8.g
        public final String f() {
            return this.f47927a;
        }

        public int hashCode() {
            return (this.f47927a.hashCode() * 31) + c().hashCode();
        }

        @m8.g
        public String toString() {
            return "OpenUrl(url=" + this.f47927a + ", message=" + c() + ')';
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public /* synthetic */ b(java.lang.String r1, java.lang.String r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
            /*
                r0 = this;
                r3 = r3 & 2
                if (r3 == 0) goto L15
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "Redirect to "
                r2.append(r3)
                r2.append(r1)
                java.lang.String r2 = r2.toString()
            L15:
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.domain.base.a.b.<init>(java.lang.String, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: ResponseAction.kt */
    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0002HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003R\u001a\u0010\u0004\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/base/a$c;", "Lcom/qennnsad/aknkaksd/domain/base/a;", "", "a", "message", "b", "toString", "", "hashCode", "", "other", "", "equals", "Ljava/lang/String;", "c", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c implements a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f47929a;

        public c(@m8.g String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            this.f47929a = message;
        }

        public static /* synthetic */ c d(c cVar, String str, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                str = cVar.c();
            }
            return cVar.b(str);
        }

        @m8.g
        public final String a() {
            return c();
        }

        @m8.g
        public final c b(@m8.g String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new c(message);
        }

        @Override // com.qennnsad.aknkaksd.domain.base.a
        @m8.g
        public String c() {
            return this.f47929a;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && Intrinsics.areEqual(c(), ((c) obj).c());
        }

        public int hashCode() {
            return c().hashCode();
        }

        @m8.g
        public String toString() {
            return "Warning(message=" + c() + ')';
        }
    }

    @m8.g
    String c();
}
