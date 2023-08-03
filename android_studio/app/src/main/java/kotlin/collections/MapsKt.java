package kotlin.collections;

import java.util.Map;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.sequences.Sequence;
import m8.g;

@Metadata(d1 = {"kotlin/collections/MapsKt__MapWithDefaultKt", "kotlin/collections/MapsKt__MapsJVMKt", "kotlin/collections/MapsKt__MapsKt", "kotlin/collections/MapsKt___MapsJvmKt", "kotlin/collections/MapsKt___MapsKt"}, k = 4, mv = {1, 7, 1}, xi = 49)
/* loaded from: classes4.dex */
public final class MapsKt extends MapsKt___MapsKt {
    private MapsKt() {
    }

    @g
    public static /* bridge */ /* synthetic */ Sequence asSequence(@g Map map) {
        return MapsKt___MapsKt.asSequence(map);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @g
    public static /* bridge */ /* synthetic */ Map build(@g Map map) {
        return MapsKt__MapsJVMKt.build(map);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @g
    public static /* bridge */ /* synthetic */ Map createMapBuilder() {
        return MapsKt__MapsJVMKt.createMapBuilder();
    }

    @PublishedApi
    public static /* bridge */ /* synthetic */ int mapCapacity(int i4) {
        return MapsKt__MapsJVMKt.mapCapacity(i4);
    }

    @SinceKotlin(version = "1.1")
    @g
    public static /* bridge */ /* synthetic */ Map toMap(@g Map map) {
        return MapsKt__MapsKt.toMap(map);
    }
}
