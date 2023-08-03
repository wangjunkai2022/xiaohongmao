package com.qennnsad.aknkaksd.presentation.ui.main.index;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: DistrictType.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\f\b\u0086\u0001\u0018\u0000 \u00042\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;", "", "<init>", "(Ljava/lang/String;I)V", "Companion", "a", "Vegan", "Hot", "VIP", "Nearby", "Followed", "Pk", "Unknown", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public enum DistrictType {
    Vegan,
    Hot,
    VIP,
    Nearby,
    Followed,
    Pk,
    Unknown;
    
    @g
    public static final a Companion = new a(null);

    /* compiled from: DistrictType.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0014\u0010\u0005\u001a\u00020\u0002*\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0003¨\u0006\b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType$a;", "", "Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;", "", "userId", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {

        /* compiled from: DistrictType.kt */
        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* renamed from: com.qennnsad.aknkaksd.presentation.ui.main.index.DistrictType$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public /* synthetic */ class C0437a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[DistrictType.values().length];
                iArr[DistrictType.Vegan.ordinal()] = 1;
                iArr[DistrictType.Hot.ordinal()] = 2;
                iArr[DistrictType.VIP.ordinal()] = 3;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final DistrictType a(@h DistrictType districtType, @g String userId) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            int i4 = districtType == null ? -1 : C0437a.$EnumSwitchMapping$0[districtType.ordinal()];
            return (i4 == 1 || i4 == 2 || i4 == 3) ? districtType : z4.a.d(userId);
        }
    }
}
