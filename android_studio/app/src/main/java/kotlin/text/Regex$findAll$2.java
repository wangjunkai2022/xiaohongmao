package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Regex.kt */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public /* synthetic */ class Regex$findAll$2 extends FunctionReferenceImpl implements Function1<MatchResult, MatchResult> {
    public static final Regex$findAll$2 INSTANCE = new Regex$findAll$2();

    Regex$findAll$2() {
        super(1, MatchResult.class, "next", "next()Lkotlin/text/MatchResult;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    @h
    public final MatchResult invoke(@g MatchResult p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        return p02.next();
    }
}
