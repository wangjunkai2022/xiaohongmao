package org.koin.core.module.dsl;

import com.facebook.common.callercontext.ContextChain;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.Kind;
import org.koin.core.instance.d;
import org.koin.core.instance.e;
import org.koin.core.instance.f;

/* compiled from: ScopedOf.kt */
@Metadata(bv = {}, d1 = {"\u0000z\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001ac\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u000e\b\u0004\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001aD\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u000e\b\u0004\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086\bø\u0001\u0000\u001aq\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001*\u00020\u00012\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u00042\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001aR\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001*\u00020\u00012\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u0004H\u0086\bø\u0001\u0000\u001a\u007f\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001*\u00020\u00012\u001a\b\u0004\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00000\u00132\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001a`\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001*\u00020\u00012\u001a\b\u0004\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00000\u0013H\u0086\bø\u0001\u0000\u001a\u008d\u0001\u0010\u0018\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001*\u00020\u00012 \b\u0004\u0010\u0003\u001a\u001a\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u00000\u00172\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001an\u0010\u0019\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001*\u00020\u00012 \b\u0004\u0010\u0003\u001a\u001a\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u00000\u0017H\u0086\bø\u0001\u0000\u001a\u009b\u0001\u0010\u001c\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001*\u00020\u00012&\b\u0004\u0010\u0003\u001a \u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00000\u001b2\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001a|\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001*\u00020\u00012&\b\u0004\u0010\u0003\u001a \u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00000\u001bH\u0086\bø\u0001\u0000\u001a©\u0001\u0010 \u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001*\u00020\u00012,\b\u0004\u0010\u0003\u001a&\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u00000\u001f2\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001a\u008a\u0001\u0010!\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001*\u00020\u00012,\b\u0004\u0010\u0003\u001a&\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u00000\u001fH\u0086\bø\u0001\u0000\u001a·\u0001\u0010$\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001*\u00020\u000122\b\u0004\u0010\u0003\u001a,\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u00000#2\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001a\u0098\u0001\u0010%\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001*\u00020\u000122\b\u0004\u0010\u0003\u001a,\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u00000#H\u0086\bø\u0001\u0000\u001aÅ\u0001\u0010(\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001\"\u0006\b\u0007\u0010&\u0018\u0001*\u00020\u000128\b\u0004\u0010\u0003\u001a2\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\u00000'2\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001a¦\u0001\u0010)\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001\"\u0006\b\u0007\u0010&\u0018\u0001*\u00020\u000128\b\u0004\u0010\u0003\u001a2\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\u00000'H\u0086\bø\u0001\u0000\u001aÓ\u0001\u0010,\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001\"\u0006\b\u0007\u0010&\u0018\u0001\"\u0006\b\b\u0010*\u0018\u0001*\u00020\u00012>\b\u0004\u0010\u0003\u001a8\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\u00000+2\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001a´\u0001\u0010-\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001\"\u0006\b\u0007\u0010&\u0018\u0001\"\u0006\b\b\u0010*\u0018\u0001*\u00020\u00012>\b\u0004\u0010\u0003\u001a8\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\u00000+H\u0086\bø\u0001\u0000\u001aá\u0001\u00100\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001\"\u0006\b\u0007\u0010&\u0018\u0001\"\u0006\b\b\u0010*\u0018\u0001\"\u0006\b\t\u0010.\u0018\u0001*\u00020\u00012D\b\u0004\u0010\u0003\u001a>\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\u00000/2\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001aÂ\u0001\u00101\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001\"\u0006\b\u0007\u0010&\u0018\u0001\"\u0006\b\b\u0010*\u0018\u0001\"\u0006\b\t\u0010.\u0018\u0001*\u00020\u00012D\b\u0004\u0010\u0003\u001a>\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\u00000/H\u0086\bø\u0001\u0000\u001aï\u0001\u00104\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001\"\u0006\b\u0007\u0010&\u0018\u0001\"\u0006\b\b\u0010*\u0018\u0001\"\u0006\b\t\u0010.\u0018\u0001\"\u0006\b\n\u00102\u0018\u0001*\u00020\u00012J\b\u0004\u0010\u0003\u001aD\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\n\u0012\u0004\u0012\u00028\u0000032\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001aÐ\u0001\u00105\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\tj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001\"\u0006\b\u0007\u0010&\u0018\u0001\"\u0006\b\b\u0010*\u0018\u0001\"\u0006\b\t\u0010.\u0018\u0001\"\u0006\b\n\u00102\u0018\u0001*\u00020\u00012J\b\u0004\u0010\u0003\u001aD\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\n\u0012\u0004\u0012\u00028\u000003H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00066"}, d2 = {"R", "Lb9/d;", "Lkotlin/Function0;", "constructor", "Lkotlin/Function1;", "Lorg/koin/core/definition/a;", "", "Lkotlin/ExtensionFunctionType;", "options", "Lkotlin/Pair;", "Lx8/a;", "Lorg/koin/core/instance/d;", "Lorg/koin/core/module/KoinDefinition;", "b", "a", "T1", "f", "e", "T2", "Lkotlin/Function2;", "h", "g", "T3", "Lkotlin/Function3;", "j", ContextChain.TAG_INFRA, "T4", "Lkotlin/Function4;", "l", "k", "T5", "Lkotlin/Function5;", "n", "m", "T6", "Lkotlin/Function6;", "p", "o", "T7", "Lkotlin/Function7;", "r", "q", "T8", "Lkotlin/Function8;", "t", "s", "T9", "Lkotlin/Function9;", "v", "u", "T10", "Lkotlin/Function10;", "d", "c", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class ScopedOfKt {
    public static final /* synthetic */ <R> Pair<x8.a, d<R>> a(b9.d dVar, Function0<? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$2 scopedOfKt$scopedOf$2 = new ScopedOfKt$scopedOf$2(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$2, kind, emptyList));
        dVar.c().p(eVar);
        return new Pair<>(dVar.c(), eVar);
    }

    public static final /* synthetic */ <R> Pair<x8.a, d<R>> b(b9.d dVar, Function0<? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        x8.a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$1 scopedOfKt$scopedOf$1 = new ScopedOfKt$scopedOf$1(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$1, kind, emptyList));
        org.koin.core.definition.a<?> f10 = eVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(c10, eVar);
        options.invoke(f10);
        c10.p(eVar);
        c10.q(eVar);
        if (f10.p() && (eVar instanceof f)) {
            c10.u((f) eVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> Pair<x8.a, d<R>> c(b9.d dVar, Function10<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$22 scopedOfKt$scopedOf$22 = new ScopedOfKt$scopedOf$22(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$22, kind, emptyList));
        dVar.c().p(eVar);
        return new Pair<>(dVar.c(), eVar);
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> Pair<x8.a, d<R>> d(b9.d dVar, Function10<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        x8.a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$21 scopedOfKt$scopedOf$21 = new ScopedOfKt$scopedOf$21(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$21, kind, emptyList));
        org.koin.core.definition.a<?> f10 = eVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(c10, eVar);
        options.invoke(f10);
        c10.p(eVar);
        c10.q(eVar);
        if (f10.p() && (eVar instanceof f)) {
            c10.u((f) eVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1> Pair<x8.a, d<R>> e(b9.d dVar, Function1<? super T1, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$4 scopedOfKt$scopedOf$4 = new ScopedOfKt$scopedOf$4(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$4, kind, emptyList));
        dVar.c().p(eVar);
        return new Pair<>(dVar.c(), eVar);
    }

    public static final /* synthetic */ <R, T1> Pair<x8.a, d<R>> f(b9.d dVar, Function1<? super T1, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        x8.a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$3 scopedOfKt$scopedOf$3 = new ScopedOfKt$scopedOf$3(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$3, kind, emptyList));
        org.koin.core.definition.a<?> f10 = eVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(c10, eVar);
        options.invoke(f10);
        c10.p(eVar);
        c10.q(eVar);
        if (f10.p() && (eVar instanceof f)) {
            c10.u((f) eVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2> Pair<x8.a, d<R>> g(b9.d dVar, Function2<? super T1, ? super T2, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$6 scopedOfKt$scopedOf$6 = new ScopedOfKt$scopedOf$6(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$6, kind, emptyList));
        dVar.c().p(eVar);
        return new Pair<>(dVar.c(), eVar);
    }

    public static final /* synthetic */ <R, T1, T2> Pair<x8.a, d<R>> h(b9.d dVar, Function2<? super T1, ? super T2, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        x8.a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$5 scopedOfKt$scopedOf$5 = new ScopedOfKt$scopedOf$5(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$5, kind, emptyList));
        org.koin.core.definition.a<?> f10 = eVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(c10, eVar);
        options.invoke(f10);
        c10.p(eVar);
        c10.q(eVar);
        if (f10.p() && (eVar instanceof f)) {
            c10.u((f) eVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2, T3> Pair<x8.a, d<R>> i(b9.d dVar, Function3<? super T1, ? super T2, ? super T3, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$8 scopedOfKt$scopedOf$8 = new ScopedOfKt$scopedOf$8(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$8, kind, emptyList));
        dVar.c().p(eVar);
        return new Pair<>(dVar.c(), eVar);
    }

    public static final /* synthetic */ <R, T1, T2, T3> Pair<x8.a, d<R>> j(b9.d dVar, Function3<? super T1, ? super T2, ? super T3, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        x8.a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$7 scopedOfKt$scopedOf$7 = new ScopedOfKt$scopedOf$7(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$7, kind, emptyList));
        org.koin.core.definition.a<?> f10 = eVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(c10, eVar);
        options.invoke(f10);
        c10.p(eVar);
        c10.q(eVar);
        if (f10.p() && (eVar instanceof f)) {
            c10.u((f) eVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4> Pair<x8.a, d<R>> k(b9.d dVar, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$10 scopedOfKt$scopedOf$10 = new ScopedOfKt$scopedOf$10(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$10, kind, emptyList));
        dVar.c().p(eVar);
        return new Pair<>(dVar.c(), eVar);
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4> Pair<x8.a, d<R>> l(b9.d dVar, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        x8.a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$9 scopedOfKt$scopedOf$9 = new ScopedOfKt$scopedOf$9(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$9, kind, emptyList));
        org.koin.core.definition.a<?> f10 = eVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(c10, eVar);
        options.invoke(f10);
        c10.p(eVar);
        c10.q(eVar);
        if (f10.p() && (eVar instanceof f)) {
            c10.u((f) eVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5> Pair<x8.a, d<R>> m(b9.d dVar, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$12 scopedOfKt$scopedOf$12 = new ScopedOfKt$scopedOf$12(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$12, kind, emptyList));
        dVar.c().p(eVar);
        return new Pair<>(dVar.c(), eVar);
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5> Pair<x8.a, d<R>> n(b9.d dVar, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        x8.a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$11 scopedOfKt$scopedOf$11 = new ScopedOfKt$scopedOf$11(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$11, kind, emptyList));
        org.koin.core.definition.a<?> f10 = eVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(c10, eVar);
        options.invoke(f10);
        c10.p(eVar);
        c10.q(eVar);
        if (f10.p() && (eVar instanceof f)) {
            c10.u((f) eVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6> Pair<x8.a, d<R>> o(b9.d dVar, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$14 scopedOfKt$scopedOf$14 = new ScopedOfKt$scopedOf$14(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$14, kind, emptyList));
        dVar.c().p(eVar);
        return new Pair<>(dVar.c(), eVar);
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6> Pair<x8.a, d<R>> p(b9.d dVar, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        x8.a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$13 scopedOfKt$scopedOf$13 = new ScopedOfKt$scopedOf$13(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$13, kind, emptyList));
        org.koin.core.definition.a<?> f10 = eVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(c10, eVar);
        options.invoke(f10);
        c10.p(eVar);
        c10.q(eVar);
        if (f10.p() && (eVar instanceof f)) {
            c10.u((f) eVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7> Pair<x8.a, d<R>> q(b9.d dVar, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$16 scopedOfKt$scopedOf$16 = new ScopedOfKt$scopedOf$16(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$16, kind, emptyList));
        dVar.c().p(eVar);
        return new Pair<>(dVar.c(), eVar);
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7> Pair<x8.a, d<R>> r(b9.d dVar, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        x8.a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$15 scopedOfKt$scopedOf$15 = new ScopedOfKt$scopedOf$15(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$15, kind, emptyList));
        org.koin.core.definition.a<?> f10 = eVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(c10, eVar);
        options.invoke(f10);
        c10.p(eVar);
        c10.q(eVar);
        if (f10.p() && (eVar instanceof f)) {
            c10.u((f) eVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7, T8> Pair<x8.a, d<R>> s(b9.d dVar, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$18 scopedOfKt$scopedOf$18 = new ScopedOfKt$scopedOf$18(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$18, kind, emptyList));
        dVar.c().p(eVar);
        return new Pair<>(dVar.c(), eVar);
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7, T8> Pair<x8.a, d<R>> t(b9.d dVar, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        x8.a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$17 scopedOfKt$scopedOf$17 = new ScopedOfKt$scopedOf$17(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$17, kind, emptyList));
        org.koin.core.definition.a<?> f10 = eVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(c10, eVar);
        options.invoke(f10);
        c10.p(eVar);
        c10.q(eVar);
        if (f10.p() && (eVar instanceof f)) {
            c10.u((f) eVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7, T8, T9> Pair<x8.a, d<R>> u(b9.d dVar, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$20 scopedOfKt$scopedOf$20 = new ScopedOfKt$scopedOf$20(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$20, kind, emptyList));
        dVar.c().p(eVar);
        return new Pair<>(dVar.c(), eVar);
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7, T8, T9> Pair<x8.a, d<R>> v(b9.d dVar, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        x8.a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopedOfKt$scopedOf$19 scopedOfKt$scopedOf$19 = new ScopedOfKt$scopedOf$19(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopedOfKt$scopedOf$19, kind, emptyList));
        org.koin.core.definition.a<?> f10 = eVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(c10, eVar);
        options.invoke(f10);
        c10.p(eVar);
        c10.q(eVar);
        if (f10.p() && (eVar instanceof f)) {
            c10.u((f) eVar);
        }
        return pair;
    }
}
