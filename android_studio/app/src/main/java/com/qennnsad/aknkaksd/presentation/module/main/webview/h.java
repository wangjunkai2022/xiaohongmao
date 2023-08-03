package com.qennnsad.aknkaksd.presentation.module.main.webview;

import com.qennnsad.aknkaksd.data.bean.websocket.PeerageLogin;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SimpleWebViewViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/webview/h;", "", "<init>", "()V", "a", "b", "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/h$a;", "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/h$b;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class h {

    /* compiled from: SimpleWebViewViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/webview/h$a;", "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/h;", "", "a", k4.b.f84734a, "b", "", "toString", "hashCode", "", "other", "", "equals", "I", "d", "()I", "<init>", "(I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends h {

        /* renamed from: a  reason: collision with root package name */
        private final int f52139a;

        public a(int i4) {
            super(null);
            this.f52139a = i4;
        }

        public static /* synthetic */ a c(a aVar, int i4, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i4 = aVar.f52139a;
            }
            return aVar.b(i4);
        }

        public final int a() {
            return this.f52139a;
        }

        @m8.g
        public final a b(int i4) {
            return new a(i4);
        }

        public final int d() {
            return this.f52139a;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.f52139a == ((a) obj).f52139a;
        }

        public int hashCode() {
            return this.f52139a;
        }

        @m8.g
        public String toString() {
            return "OpenChat(chatId=" + this.f52139a + ')';
        }
    }

    /* compiled from: SimpleWebViewViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nHÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/webview/h$b;", "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/h;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;", "a", "peerage", "b", "", "toString", "", "hashCode", "", "other", "", "equals", "Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;", "d", "()Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;", "<init>", "(Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends h {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final PeerageLogin f52140a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@m8.g PeerageLogin peerage) {
            super(null);
            Intrinsics.checkNotNullParameter(peerage, "peerage");
            this.f52140a = peerage;
        }

        public static /* synthetic */ b c(b bVar, PeerageLogin peerageLogin, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                peerageLogin = bVar.f52140a;
            }
            return bVar.b(peerageLogin);
        }

        @m8.g
        public final PeerageLogin a() {
            return this.f52140a;
        }

        @m8.g
        public final b b(@m8.g PeerageLogin peerage) {
            Intrinsics.checkNotNullParameter(peerage, "peerage");
            return new b(peerage);
        }

        @m8.g
        public final PeerageLogin d() {
            return this.f52140a;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Intrinsics.areEqual(this.f52140a, ((b) obj).f52140a);
        }

        public int hashCode() {
            return this.f52140a.hashCode();
        }

        @m8.g
        public String toString() {
            return "PlayPeerageAnimation(peerage=" + this.f52140a + ')';
        }
    }

    private h() {
    }

    public /* synthetic */ h(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
