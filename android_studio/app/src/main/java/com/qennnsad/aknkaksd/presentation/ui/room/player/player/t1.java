package com.qennnsad.aknkaksd.presentation.ui.room.player.player;

import com.didi.live.spring.R;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: SidePanelButtonAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0003\u0007B\u0019\b\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\u0007\u0010\u0005\u0082\u0001\u0002\u000b\f¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;", "", "", "a", "I", "()I", "imageRes", "b", "indicatorCount", "<init>", "(II)V", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$a;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class t1 {

    /* renamed from: a  reason: collision with root package name */
    private final int f53993a;

    /* renamed from: b  reason: collision with root package name */
    private final int f53994b;

    /* compiled from: SidePanelButtonAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$a;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends t1 {
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        public static final a f53995c = new a();

        private a() {
            super(R.drawable.ic_main_index_game_center, 0, null);
        }
    }

    /* compiled from: SidePanelButtonAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;", "", "c", "unreadCount", "d", "", "toString", "hashCode", "", "other", "", "equals", "I", "f", "()I", "<init>", "(I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends t1 {

        /* renamed from: c  reason: collision with root package name */
        private final int f53996c;

        public b(int i4) {
            super(R.drawable.ic_stream_deposit_chat, i4, null);
            this.f53996c = i4;
        }

        public static /* synthetic */ b e(b bVar, int i4, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i4 = bVar.f53996c;
            }
            return bVar.d(i4);
        }

        public final int c() {
            return this.f53996c;
        }

        @m8.g
        public final b d(int i4) {
            return new b(i4);
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && this.f53996c == ((b) obj).f53996c;
        }

        public final int f() {
            return this.f53996c;
        }

        public int hashCode() {
            return this.f53996c;
        }

        @m8.g
        public String toString() {
            return "InStreamChat(unreadCount=" + this.f53996c + ')';
        }
    }

    private t1(int i4, int i10) {
        this.f53993a = i4;
        this.f53994b = i10;
    }

    public /* synthetic */ t1(int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, i10);
    }

    public final int a() {
        return this.f53993a;
    }

    public final int b() {
        return this.f53994b;
    }
}
