package com.qennnsad.aknkaksd.presentation.module.main.profile;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: UserProfileViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e;", "", "<init>", "()V", "a", "b", "Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e$a;", "Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e$b;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class e {

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e$a;", "Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e;", "", "a", k4.b.f84734a, "b", "", "toString", "hashCode", "", "other", "", "equals", "I", "d", "()I", "<init>", "(I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends e {

        /* renamed from: a  reason: collision with root package name */
        private final int f51907a;

        public a(int i4) {
            super(null);
            this.f51907a = i4;
        }

        public static /* synthetic */ a c(a aVar, int i4, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i4 = aVar.f51907a;
            }
            return aVar.b(i4);
        }

        public final int a() {
            return this.f51907a;
        }

        @m8.g
        public final a b(int i4) {
            return new a(i4);
        }

        public final int d() {
            return this.f51907a;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.f51907a == ((a) obj).f51907a;
        }

        public int hashCode() {
            return this.f51907a;
        }

        @m8.g
        public String toString() {
            return "OpenChat(chatId=" + this.f51907a + ')';
        }
    }

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e$b;", "Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e;", "", "a", "reasonMsg", "b", "", "toString", "hashCode", "", "other", "", "equals", "I", "d", "()I", "<init>", "(I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends e {

        /* renamed from: a  reason: collision with root package name */
        private final int f51908a;

        public b(int i4) {
            super(null);
            this.f51908a = i4;
        }

        public static /* synthetic */ b c(b bVar, int i4, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i4 = bVar.f51908a;
            }
            return bVar.b(i4);
        }

        public final int a() {
            return this.f51908a;
        }

        @m8.g
        public final b b(int i4) {
            return new b(i4);
        }

        public final int d() {
            return this.f51908a;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && this.f51908a == ((b) obj).f51908a;
        }

        public int hashCode() {
            return this.f51908a;
        }

        @m8.g
        public String toString() {
            return "UnexpectedClose(reasonMsg=" + this.f51908a + ')';
        }
    }

    private e() {
    }

    public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
