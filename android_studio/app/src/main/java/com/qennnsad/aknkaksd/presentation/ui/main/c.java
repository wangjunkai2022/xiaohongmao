package com.qennnsad.aknkaksd.presentation.ui.main;

import com.qennnsad.aknkaksd.data.bean.AdConfigBean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MainEvent.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0004\u0007\b\t\n¨\u0006\u000b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/c;", "", "<init>", "()V", "a", "b", "c", "Lcom/qennnsad/aknkaksd/presentation/ui/main/a;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/c$a;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/c$b;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/c$c;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class c {

    /* compiled from: MainEvent.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/c$a;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/c;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends c {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        public static final a f52788a = new a();

        private a() {
            super(null);
        }
    }

    /* compiled from: MainEvent.kt */
    @Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nHÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/c$b;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/c;", "Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;", "a", "adConfigBean", "b", "", "toString", "", "hashCode", "", "other", "", "equals", "Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;", "d", "()Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;", "<init>", "(Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends c {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final AdConfigBean f52789a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@m8.g AdConfigBean adConfigBean) {
            super(null);
            Intrinsics.checkNotNullParameter(adConfigBean, "adConfigBean");
            this.f52789a = adConfigBean;
        }

        public static /* synthetic */ b c(b bVar, AdConfigBean adConfigBean, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                adConfigBean = bVar.f52789a;
            }
            return bVar.b(adConfigBean);
        }

        @m8.g
        public final AdConfigBean a() {
            return this.f52789a;
        }

        @m8.g
        public final b b(@m8.g AdConfigBean adConfigBean) {
            Intrinsics.checkNotNullParameter(adConfigBean, "adConfigBean");
            return new b(adConfigBean);
        }

        @m8.g
        public final AdConfigBean d() {
            return this.f52789a;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Intrinsics.areEqual(this.f52789a, ((b) obj).f52789a);
        }

        public int hashCode() {
            return this.f52789a.hashCode();
        }

        @m8.g
        public String toString() {
            return "ShowAdDialog(adConfigBean=" + this.f52789a + ')';
        }
    }

    /* compiled from: MainEvent.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/c$c;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/c;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* renamed from: com.qennnsad.aknkaksd.presentation.ui.main.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0435c extends c {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        public static final C0435c f52790a = new C0435c();

        private C0435c() {
            super(null);
        }
    }

    private c() {
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
