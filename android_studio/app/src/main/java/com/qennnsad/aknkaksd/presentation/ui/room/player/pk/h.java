package com.qennnsad.aknkaksd.presentation.ui.room.player.pk;

import android.view.ViewGroup;
import com.qennnsad.aknkaksd.data.repository.m;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PkPlayerManagerKsy.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0016\b\u0002\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;", "L0", "M0", "Landroid/view/ViewGroup;", "s", "Landroid/view/ViewGroup;", "root", "t", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;", "_vPrim", "u", "_vSec", "Lg5/a;", "localDataManager", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "", "isWatcher", "Lkotlin/Function1;", "", "", "donatorClickListener", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class h extends g {
    @m8.g

    /* renamed from: s  reason: collision with root package name */
    private final ViewGroup f53631s;
    @m8.h

    /* renamed from: t  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.f f53632t;
    @m8.h

    /* renamed from: u  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.f f53633u;

    public /* synthetic */ h(g5.a aVar, m mVar, ViewGroup viewGroup, boolean z9, Function1 function1, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, mVar, viewGroup, z9, (i4 & 16) != 0 ? null : function1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0010, code lost:
        if (((r0 == null || !r0.isDestroyed()) ? false : false) != false) goto L12;
     */
    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g
    @m8.h
    /* renamed from: L0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.f H() {
        /*
            r9 = this;
            com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.f r0 = r9.f53632t
            r1 = 0
            if (r0 == 0) goto L12
            r2 = 1
            if (r0 == 0) goto Lf
            boolean r0 = r0.isDestroyed()
            if (r0 != r2) goto Lf
            goto L10
        Lf:
            r2 = 0
        L10:
            if (r2 == 0) goto L2b
        L12:
            timber.log.Timber$b r0 = timber.log.Timber.f93860a
            java.lang.Object[] r1 = new java.lang.Object[r1]
            java.lang.String r2 = "Creating new KsyPlayerWrapper instanse primary"
            r0.a(r2, r1)
            com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.f r0 = new com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.f
            android.view.ViewGroup r4 = r9.f53631s
            r5 = 2131363708(0x7f0a077c, float:1.8347232E38)
            r6 = 0
            r7 = 4
            r8 = 0
            r3 = r0
            r3.<init>(r4, r5, r6, r7, r8)
            r9.f53632t = r0
        L2b:
            com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.f r0 = r9.f53632t
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.room.player.pk.h.H():com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.f");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0010, code lost:
        if (((r0 == null || !r0.isDestroyed()) ? false : false) != false) goto L12;
     */
    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g
    @m8.h
    /* renamed from: M0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.f I() {
        /*
            r4 = this;
            com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.f r0 = r4.f53633u
            r1 = 0
            if (r0 == 0) goto L12
            r2 = 1
            if (r0 == 0) goto Lf
            boolean r0 = r0.isDestroyed()
            if (r0 != r2) goto Lf
            goto L10
        Lf:
            r2 = 0
        L10:
            if (r2 == 0) goto L31
        L12:
            timber.log.Timber$b r0 = timber.log.Timber.f93860a
            java.lang.Object[] r1 = new java.lang.Object[r1]
            java.lang.String r2 = "Creating new KsyPlayerWrapper instanse secondary"
            r0.a(r2, r1)
            com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.f r0 = new com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.f
            android.view.ViewGroup r1 = r4.f53631s
            r2 = 2131363709(0x7f0a077d, float:1.8347234E38)
            com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.f r3 = r4.f53632t
            if (r3 == 0) goto L2b
            com.ksyun.media.player.KSYMediaPlayer r3 = r3.r()
            goto L2c
        L2b:
            r3 = 0
        L2c:
            r0.<init>(r1, r2, r3)
            r4.f53633u = r0
        L31:
            com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.f r0 = r4.f53633u
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.room.player.pk.h.I():com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.f");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(@m8.g g5.a localDataManager, @m8.g m sourceFactory, @m8.g ViewGroup root, boolean z9, @m8.h Function1<? super String, Unit> function1) {
        super(localDataManager, sourceFactory, root, z9, function1);
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(root, "root");
        this.f53631s = root;
    }
}
