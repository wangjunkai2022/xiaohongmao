package org.koin.androidx.fragment.dsl;

import androidx.fragment.app.Fragment;
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
import org.koin.core.instance.f;
import x8.a;

/* compiled from: ScopeFragmentOf.kt */
@Metadata(bv = {}, d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001ag\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u000e\b\u0004\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001aH\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u000e\b\u0004\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0086\bø\u0001\u0000\u001au\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001*\u00020\u00022\u0014\b\u0004\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u00052\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001aV\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001*\u00020\u00022\u0014\b\u0004\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u0005H\u0086\bø\u0001\u0000\u001a\u0083\u0001\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001*\u00020\u00022\u001a\b\u0004\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00000\u00142\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001ad\u0010\u0016\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001*\u00020\u00022\u001a\b\u0004\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00000\u0014H\u0086\bø\u0001\u0000\u001a\u0091\u0001\u0010\u0019\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001\"\u0006\b\u0003\u0010\u0017\u0018\u0001*\u00020\u00022 \b\u0004\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u00000\u00182\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001ar\u0010\u001a\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001\"\u0006\b\u0003\u0010\u0017\u0018\u0001*\u00020\u00022 \b\u0004\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u00000\u0018H\u0086\bø\u0001\u0000\u001a\u009f\u0001\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001\"\u0006\b\u0003\u0010\u0017\u0018\u0001\"\u0006\b\u0004\u0010\u001b\u0018\u0001*\u00020\u00022&\b\u0004\u0010\u0004\u001a \u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00000\u001c2\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001a\u0080\u0001\u0010\u001e\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001\"\u0006\b\u0003\u0010\u0017\u0018\u0001\"\u0006\b\u0004\u0010\u001b\u0018\u0001*\u00020\u00022&\b\u0004\u0010\u0004\u001a \u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00000\u001cH\u0086\bø\u0001\u0000\u001a\u00ad\u0001\u0010!\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001\"\u0006\b\u0003\u0010\u0017\u0018\u0001\"\u0006\b\u0004\u0010\u001b\u0018\u0001\"\u0006\b\u0005\u0010\u001f\u0018\u0001*\u00020\u00022,\b\u0004\u0010\u0004\u001a&\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u00000 2\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001a\u008e\u0001\u0010\"\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001\"\u0006\b\u0003\u0010\u0017\u0018\u0001\"\u0006\b\u0004\u0010\u001b\u0018\u0001\"\u0006\b\u0005\u0010\u001f\u0018\u0001*\u00020\u00022,\b\u0004\u0010\u0004\u001a&\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u00000 H\u0086\bø\u0001\u0000\u001a»\u0001\u0010%\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001\"\u0006\b\u0003\u0010\u0017\u0018\u0001\"\u0006\b\u0004\u0010\u001b\u0018\u0001\"\u0006\b\u0005\u0010\u001f\u0018\u0001\"\u0006\b\u0006\u0010#\u0018\u0001*\u00020\u000222\b\u0004\u0010\u0004\u001a,\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u00000$2\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001a\u009c\u0001\u0010&\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001\"\u0006\b\u0003\u0010\u0017\u0018\u0001\"\u0006\b\u0004\u0010\u001b\u0018\u0001\"\u0006\b\u0005\u0010\u001f\u0018\u0001\"\u0006\b\u0006\u0010#\u0018\u0001*\u00020\u000222\b\u0004\u0010\u0004\u001a,\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u00000$H\u0086\bø\u0001\u0000\u001aÉ\u0001\u0010)\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001\"\u0006\b\u0003\u0010\u0017\u0018\u0001\"\u0006\b\u0004\u0010\u001b\u0018\u0001\"\u0006\b\u0005\u0010\u001f\u0018\u0001\"\u0006\b\u0006\u0010#\u0018\u0001\"\u0006\b\u0007\u0010'\u0018\u0001*\u00020\u000228\b\u0004\u0010\u0004\u001a2\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\u00000(2\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001aª\u0001\u0010*\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001\"\u0006\b\u0003\u0010\u0017\u0018\u0001\"\u0006\b\u0004\u0010\u001b\u0018\u0001\"\u0006\b\u0005\u0010\u001f\u0018\u0001\"\u0006\b\u0006\u0010#\u0018\u0001\"\u0006\b\u0007\u0010'\u0018\u0001*\u00020\u000228\b\u0004\u0010\u0004\u001a2\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\u00000(H\u0086\bø\u0001\u0000\u001a×\u0001\u0010-\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001\"\u0006\b\u0003\u0010\u0017\u0018\u0001\"\u0006\b\u0004\u0010\u001b\u0018\u0001\"\u0006\b\u0005\u0010\u001f\u0018\u0001\"\u0006\b\u0006\u0010#\u0018\u0001\"\u0006\b\u0007\u0010'\u0018\u0001\"\u0006\b\b\u0010+\u0018\u0001*\u00020\u00022>\b\u0004\u0010\u0004\u001a8\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\u00000,2\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001a¸\u0001\u0010.\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001\"\u0006\b\u0003\u0010\u0017\u0018\u0001\"\u0006\b\u0004\u0010\u001b\u0018\u0001\"\u0006\b\u0005\u0010\u001f\u0018\u0001\"\u0006\b\u0006\u0010#\u0018\u0001\"\u0006\b\u0007\u0010'\u0018\u0001\"\u0006\b\b\u0010+\u0018\u0001*\u00020\u00022>\b\u0004\u0010\u0004\u001a8\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\u00000,H\u0086\bø\u0001\u0000\u001aå\u0001\u00101\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001\"\u0006\b\u0003\u0010\u0017\u0018\u0001\"\u0006\b\u0004\u0010\u001b\u0018\u0001\"\u0006\b\u0005\u0010\u001f\u0018\u0001\"\u0006\b\u0006\u0010#\u0018\u0001\"\u0006\b\u0007\u0010'\u0018\u0001\"\u0006\b\b\u0010+\u0018\u0001\"\u0006\b\t\u0010/\u0018\u0001*\u00020\u00022D\b\u0004\u0010\u0004\u001a>\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\u0000002\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001aÆ\u0001\u00102\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001\"\u0006\b\u0003\u0010\u0017\u0018\u0001\"\u0006\b\u0004\u0010\u001b\u0018\u0001\"\u0006\b\u0005\u0010\u001f\u0018\u0001\"\u0006\b\u0006\u0010#\u0018\u0001\"\u0006\b\u0007\u0010'\u0018\u0001\"\u0006\b\b\u0010+\u0018\u0001\"\u0006\b\t\u0010/\u0018\u0001*\u00020\u00022D\b\u0004\u0010\u0004\u001a>\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\u000000H\u0086\bø\u0001\u0000\u001aó\u0001\u00105\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001\"\u0006\b\u0003\u0010\u0017\u0018\u0001\"\u0006\b\u0004\u0010\u001b\u0018\u0001\"\u0006\b\u0005\u0010\u001f\u0018\u0001\"\u0006\b\u0006\u0010#\u0018\u0001\"\u0006\b\u0007\u0010'\u0018\u0001\"\u0006\b\b\u0010+\u0018\u0001\"\u0006\b\t\u0010/\u0018\u0001\"\u0006\b\n\u00103\u0018\u0001*\u00020\u00022J\b\u0004\u0010\u0004\u001aD\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\n\u0012\u0004\u0012\u00028\u0000042\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001aÔ\u0001\u00106\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\nj\b\u0012\u0004\u0012\u00028\u0000`\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0010\u0018\u0001\"\u0006\b\u0002\u0010\u0013\u0018\u0001\"\u0006\b\u0003\u0010\u0017\u0018\u0001\"\u0006\b\u0004\u0010\u001b\u0018\u0001\"\u0006\b\u0005\u0010\u001f\u0018\u0001\"\u0006\b\u0006\u0010#\u0018\u0001\"\u0006\b\u0007\u0010'\u0018\u0001\"\u0006\b\b\u0010+\u0018\u0001\"\u0006\b\t\u0010/\u0018\u0001\"\u0006\b\n\u00103\u0018\u0001*\u00020\u00022J\b\u0004\u0010\u0004\u001aD\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\n\u0012\u0004\u0012\u00028\u000004H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00067"}, d2 = {"Landroidx/fragment/app/Fragment;", "R", "Lb9/d;", "Lkotlin/Function0;", "constructor", "Lkotlin/Function1;", "Lorg/koin/core/definition/a;", "", "Lkotlin/ExtensionFunctionType;", "options", "Lkotlin/Pair;", "Lx8/a;", "Lorg/koin/core/instance/d;", "Lorg/koin/core/module/KoinDefinition;", "b", "a", "T1", "f", "e", "T2", "Lkotlin/Function2;", "h", "g", "T3", "Lkotlin/Function3;", "j", ContextChain.TAG_INFRA, "T4", "Lkotlin/Function4;", "l", "k", "T5", "Lkotlin/Function5;", "n", "m", "T6", "Lkotlin/Function6;", "p", "o", "T7", "Lkotlin/Function7;", "r", "q", "T8", "Lkotlin/Function8;", "t", "s", "T9", "Lkotlin/Function9;", "v", "u", "T10", "Lkotlin/Function10;", "d", "c", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ScopeFragmentOfKt {
    public static final /* synthetic */ <R extends Fragment> Pair<a, d<R>> a(b9.d dVar, Function0<? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$2 scopeFragmentOfKt$fragmentOf$2 = new ScopeFragmentOfKt$fragmentOf$2(constructor);
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$2, kind, emptyList));
        c10.p(aVar);
        return new Pair<>(c10, aVar);
    }

    public static final /* synthetic */ <R extends Fragment> Pair<a, d<R>> b(b9.d dVar, Function0<? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$1 scopeFragmentOfKt$fragmentOf$1 = new ScopeFragmentOfKt$fragmentOf$1(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$1, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar.f();
        Pair<a, d<R>> pair = new Pair<>(c10, aVar);
        options.invoke(f10);
        c10.p(aVar);
        c10.q(aVar);
        if (f10.p() && (aVar instanceof f)) {
            c10.u((f) aVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> Pair<a, d<R>> c(b9.d dVar, Function10<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$22 scopeFragmentOfKt$fragmentOf$22 = new ScopeFragmentOfKt$fragmentOf$22(constructor);
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$22, kind, emptyList));
        c10.p(aVar);
        return new Pair<>(c10, aVar);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> Pair<a, d<R>> d(b9.d dVar, Function10<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$21 scopeFragmentOfKt$fragmentOf$21 = new ScopeFragmentOfKt$fragmentOf$21(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$21, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar.f();
        Pair<a, d<R>> pair = new Pair<>(c10, aVar);
        options.invoke(f10);
        c10.p(aVar);
        c10.q(aVar);
        if (f10.p() && (aVar instanceof f)) {
            c10.u((f) aVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1> Pair<a, d<R>> e(b9.d dVar, Function1<? super T1, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$4 scopeFragmentOfKt$fragmentOf$4 = new ScopeFragmentOfKt$fragmentOf$4(constructor);
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$4, kind, emptyList));
        c10.p(aVar);
        return new Pair<>(c10, aVar);
    }

    public static final /* synthetic */ <R extends Fragment, T1> Pair<a, d<R>> f(b9.d dVar, Function1<? super T1, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$3 scopeFragmentOfKt$fragmentOf$3 = new ScopeFragmentOfKt$fragmentOf$3(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$3, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar.f();
        Pair<a, d<R>> pair = new Pair<>(c10, aVar);
        options.invoke(f10);
        c10.p(aVar);
        c10.q(aVar);
        if (f10.p() && (aVar instanceof f)) {
            c10.u((f) aVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2> Pair<a, d<R>> g(b9.d dVar, Function2<? super T1, ? super T2, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$6 scopeFragmentOfKt$fragmentOf$6 = new ScopeFragmentOfKt$fragmentOf$6(constructor);
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$6, kind, emptyList));
        c10.p(aVar);
        return new Pair<>(c10, aVar);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2> Pair<a, d<R>> h(b9.d dVar, Function2<? super T1, ? super T2, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$5 scopeFragmentOfKt$fragmentOf$5 = new ScopeFragmentOfKt$fragmentOf$5(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$5, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar.f();
        Pair<a, d<R>> pair = new Pair<>(c10, aVar);
        options.invoke(f10);
        c10.p(aVar);
        c10.q(aVar);
        if (f10.p() && (aVar instanceof f)) {
            c10.u((f) aVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3> Pair<a, d<R>> i(b9.d dVar, Function3<? super T1, ? super T2, ? super T3, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$8 scopeFragmentOfKt$fragmentOf$8 = new ScopeFragmentOfKt$fragmentOf$8(constructor);
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$8, kind, emptyList));
        c10.p(aVar);
        return new Pair<>(c10, aVar);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3> Pair<a, d<R>> j(b9.d dVar, Function3<? super T1, ? super T2, ? super T3, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$7 scopeFragmentOfKt$fragmentOf$7 = new ScopeFragmentOfKt$fragmentOf$7(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$7, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar.f();
        Pair<a, d<R>> pair = new Pair<>(c10, aVar);
        options.invoke(f10);
        c10.p(aVar);
        c10.q(aVar);
        if (f10.p() && (aVar instanceof f)) {
            c10.u((f) aVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4> Pair<a, d<R>> k(b9.d dVar, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$10 scopeFragmentOfKt$fragmentOf$10 = new ScopeFragmentOfKt$fragmentOf$10(constructor);
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$10, kind, emptyList));
        c10.p(aVar);
        return new Pair<>(c10, aVar);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4> Pair<a, d<R>> l(b9.d dVar, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$9 scopeFragmentOfKt$fragmentOf$9 = new ScopeFragmentOfKt$fragmentOf$9(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$9, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar.f();
        Pair<a, d<R>> pair = new Pair<>(c10, aVar);
        options.invoke(f10);
        c10.p(aVar);
        c10.q(aVar);
        if (f10.p() && (aVar instanceof f)) {
            c10.u((f) aVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5> Pair<a, d<R>> m(b9.d dVar, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$12 scopeFragmentOfKt$fragmentOf$12 = new ScopeFragmentOfKt$fragmentOf$12(constructor);
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$12, kind, emptyList));
        c10.p(aVar);
        return new Pair<>(c10, aVar);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5> Pair<a, d<R>> n(b9.d dVar, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$11 scopeFragmentOfKt$fragmentOf$11 = new ScopeFragmentOfKt$fragmentOf$11(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$11, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar.f();
        Pair<a, d<R>> pair = new Pair<>(c10, aVar);
        options.invoke(f10);
        c10.p(aVar);
        c10.q(aVar);
        if (f10.p() && (aVar instanceof f)) {
            c10.u((f) aVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6> Pair<a, d<R>> o(b9.d dVar, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$14 scopeFragmentOfKt$fragmentOf$14 = new ScopeFragmentOfKt$fragmentOf$14(constructor);
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$14, kind, emptyList));
        c10.p(aVar);
        return new Pair<>(c10, aVar);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6> Pair<a, d<R>> p(b9.d dVar, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$13 scopeFragmentOfKt$fragmentOf$13 = new ScopeFragmentOfKt$fragmentOf$13(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$13, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar.f();
        Pair<a, d<R>> pair = new Pair<>(c10, aVar);
        options.invoke(f10);
        c10.p(aVar);
        c10.q(aVar);
        if (f10.p() && (aVar instanceof f)) {
            c10.u((f) aVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6, T7> Pair<a, d<R>> q(b9.d dVar, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$16 scopeFragmentOfKt$fragmentOf$16 = new ScopeFragmentOfKt$fragmentOf$16(constructor);
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$16, kind, emptyList));
        c10.p(aVar);
        return new Pair<>(c10, aVar);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6, T7> Pair<a, d<R>> r(b9.d dVar, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$15 scopeFragmentOfKt$fragmentOf$15 = new ScopeFragmentOfKt$fragmentOf$15(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$15, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar.f();
        Pair<a, d<R>> pair = new Pair<>(c10, aVar);
        options.invoke(f10);
        c10.p(aVar);
        c10.q(aVar);
        if (f10.p() && (aVar instanceof f)) {
            c10.u((f) aVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6, T7, T8> Pair<a, d<R>> s(b9.d dVar, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$18 scopeFragmentOfKt$fragmentOf$18 = new ScopeFragmentOfKt$fragmentOf$18(constructor);
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$18, kind, emptyList));
        c10.p(aVar);
        return new Pair<>(c10, aVar);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6, T7, T8> Pair<a, d<R>> t(b9.d dVar, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$17 scopeFragmentOfKt$fragmentOf$17 = new ScopeFragmentOfKt$fragmentOf$17(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$17, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar.f();
        Pair<a, d<R>> pair = new Pair<>(c10, aVar);
        options.invoke(f10);
        c10.p(aVar);
        c10.q(aVar);
        if (f10.p() && (aVar instanceof f)) {
            c10.u((f) aVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6, T7, T8, T9> Pair<a, d<R>> u(b9.d dVar, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$20 scopeFragmentOfKt$fragmentOf$20 = new ScopeFragmentOfKt$fragmentOf$20(constructor);
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$20, kind, emptyList));
        c10.p(aVar);
        return new Pair<>(c10, aVar);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6, T7, T8, T9> Pair<a, d<R>> v(b9.d dVar, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        a c10 = dVar.c();
        Intrinsics.needClassReification();
        ScopeFragmentOfKt$fragmentOf$19 scopeFragmentOfKt$fragmentOf$19 = new ScopeFragmentOfKt$fragmentOf$19(constructor);
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), null, scopeFragmentOfKt$fragmentOf$19, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar.f();
        Pair<a, d<R>> pair = new Pair<>(c10, aVar);
        options.invoke(f10);
        c10.p(aVar);
        c10.q(aVar);
        if (f10.p() && (aVar instanceof f)) {
            c10.u((f) aVar);
        }
        return pair;
    }
}
