package com.qennnsad.aknkaksd.presentation.module.main.index;

import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.FollowedAnchorFragment;
import kotlin.Metadata;

/* compiled from: AnchorTypeData.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/index/e;", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;", "d", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class e extends a {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    public static final e f51684c = new e();

    private e() {
        super(AnchorType.FOLLOW, R.string.index_tab_followed, null);
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.main.index.a
    @m8.g
    /* renamed from: d */
    public FollowedAnchorFragment a() {
        return new FollowedAnchorFragment();
    }
}
