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
import z8.c;

/* compiled from: FragmentOf.kt */
@Metadata(bv = {}, d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001ag\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u000e\b\u0004\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001aH\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u000e\b\u0004\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0086\bø\u0001\u0000\u001au\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001*\u00020\u00022\u0014\b\u0004\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u00052\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001aV\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001*\u00020\u00022\u0014\b\u0004\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u0005H\u0086\bø\u0001\u0000\u001a\u0083\u0001\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001*\u00020\u00022\u001a\b\u0004\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00000\u00132\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001ad\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001*\u00020\u00022\u001a\b\u0004\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00000\u0013H\u0086\bø\u0001\u0000\u001a\u0091\u0001\u0010\u0018\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001*\u00020\u00022 \b\u0004\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u00000\u00172\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001ar\u0010\u0019\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001*\u00020\u00022 \b\u0004\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u00000\u0017H\u0086\bø\u0001\u0000\u001a\u009f\u0001\u0010\u001c\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001*\u00020\u00022&\b\u0004\u0010\u0004\u001a \u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00000\u001b2\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001a\u0080\u0001\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001*\u00020\u00022&\b\u0004\u0010\u0004\u001a \u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00000\u001bH\u0086\bø\u0001\u0000\u001a\u00ad\u0001\u0010 \u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001*\u00020\u00022,\b\u0004\u0010\u0004\u001a&\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u00000\u001f2\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001a\u008e\u0001\u0010!\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001*\u00020\u00022,\b\u0004\u0010\u0004\u001a&\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u00000\u001fH\u0086\bø\u0001\u0000\u001a»\u0001\u0010$\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001*\u00020\u000222\b\u0004\u0010\u0004\u001a,\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u00000#2\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001a\u009c\u0001\u0010%\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001*\u00020\u000222\b\u0004\u0010\u0004\u001a,\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u00000#H\u0086\bø\u0001\u0000\u001aÉ\u0001\u0010(\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001\"\u0006\b\u0007\u0010&\u0018\u0001*\u00020\u000228\b\u0004\u0010\u0004\u001a2\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\u00000'2\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001aª\u0001\u0010)\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001\"\u0006\b\u0007\u0010&\u0018\u0001*\u00020\u000228\b\u0004\u0010\u0004\u001a2\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\u00000'H\u0086\bø\u0001\u0000\u001a×\u0001\u0010,\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001\"\u0006\b\u0007\u0010&\u0018\u0001\"\u0006\b\b\u0010*\u0018\u0001*\u00020\u00022>\b\u0004\u0010\u0004\u001a8\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\u00000+2\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001a¸\u0001\u0010-\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001\"\u0006\b\u0007\u0010&\u0018\u0001\"\u0006\b\b\u0010*\u0018\u0001*\u00020\u00022>\b\u0004\u0010\u0004\u001a8\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\u00000+H\u0086\bø\u0001\u0000\u001aå\u0001\u00100\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001\"\u0006\b\u0007\u0010&\u0018\u0001\"\u0006\b\b\u0010*\u0018\u0001\"\u0006\b\t\u0010.\u0018\u0001*\u00020\u00022D\b\u0004\u0010\u0004\u001a>\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\u00000/2\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001aÆ\u0001\u00101\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001\"\u0006\b\u0007\u0010&\u0018\u0001\"\u0006\b\b\u0010*\u0018\u0001\"\u0006\b\t\u0010.\u0018\u0001*\u00020\u00022D\b\u0004\u0010\u0004\u001a>\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\u00000/H\u0086\bø\u0001\u0000\u001aó\u0001\u00104\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001\"\u0006\b\u0007\u0010&\u0018\u0001\"\u0006\b\b\u0010*\u0018\u0001\"\u0006\b\t\u0010.\u0018\u0001\"\u0006\b\n\u00102\u0018\u0001*\u00020\u00022J\b\u0004\u0010\u0004\u001aD\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\n\u0012\u0004\u0012\u00028\u0000032\u001d\u0010\t\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\bH\u0086\bø\u0001\u0000\u001aÔ\u0001\u00105\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\nj\b\u0012\u0004\u0012\u00028\u0000`\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u000f\u0018\u0001\"\u0006\b\u0002\u0010\u0012\u0018\u0001\"\u0006\b\u0003\u0010\u0016\u0018\u0001\"\u0006\b\u0004\u0010\u001a\u0018\u0001\"\u0006\b\u0005\u0010\u001e\u0018\u0001\"\u0006\b\u0006\u0010\"\u0018\u0001\"\u0006\b\u0007\u0010&\u0018\u0001\"\u0006\b\b\u0010*\u0018\u0001\"\u0006\b\t\u0010.\u0018\u0001\"\u0006\b\n\u00102\u0018\u0001*\u00020\u00022J\b\u0004\u0010\u0004\u001aD\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\n\u0012\u0004\u0012\u00028\u000003H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00066"}, d2 = {"Landroidx/fragment/app/Fragment;", "R", "Lx8/a;", "Lkotlin/Function0;", "constructor", "Lkotlin/Function1;", "Lorg/koin/core/definition/a;", "", "Lkotlin/ExtensionFunctionType;", "options", "Lkotlin/Pair;", "Lorg/koin/core/instance/d;", "Lorg/koin/core/module/KoinDefinition;", "b", "a", "T1", "f", "e", "T2", "Lkotlin/Function2;", "h", "g", "T3", "Lkotlin/Function3;", "j", ContextChain.TAG_INFRA, "T4", "Lkotlin/Function4;", "l", "k", "T5", "Lkotlin/Function5;", "n", "m", "T6", "Lkotlin/Function6;", "p", "o", "T7", "Lkotlin/Function7;", "r", "q", "T8", "Lkotlin/Function8;", "t", "s", "T9", "Lkotlin/Function9;", "v", "u", "T10", "Lkotlin/Function10;", "d", "c", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FragmentOfKt {
    public static final /* synthetic */ <R extends Fragment> Pair<a, d<R>> a(a aVar, Function0<? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$2 fragmentOfKt$fragmentOf$2 = new FragmentOfKt$fragmentOf$2(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$2, kind, emptyList));
        aVar.p(aVar2);
        return new Pair<>(aVar, aVar2);
    }

    public static final /* synthetic */ <R extends Fragment> Pair<a, d<R>> b(a aVar, Function0<? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$1 fragmentOfKt$fragmentOf$1 = new FragmentOfKt$fragmentOf$1(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$1, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar2.f();
        Pair<a, d<R>> pair = new Pair<>(aVar, aVar2);
        options.invoke(f10);
        aVar.p(aVar2);
        aVar.q(aVar2);
        if (f10.p() && (aVar2 instanceof f)) {
            aVar.u((f) aVar2);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> Pair<a, d<R>> c(a aVar, Function10<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$22 fragmentOfKt$fragmentOf$22 = new FragmentOfKt$fragmentOf$22(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$22, kind, emptyList));
        aVar.p(aVar2);
        return new Pair<>(aVar, aVar2);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> Pair<a, d<R>> d(a aVar, Function10<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$21 fragmentOfKt$fragmentOf$21 = new FragmentOfKt$fragmentOf$21(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$21, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar2.f();
        Pair<a, d<R>> pair = new Pair<>(aVar, aVar2);
        options.invoke(f10);
        aVar.p(aVar2);
        aVar.q(aVar2);
        if (f10.p() && (aVar2 instanceof f)) {
            aVar.u((f) aVar2);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1> Pair<a, d<R>> e(a aVar, Function1<? super T1, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$4 fragmentOfKt$fragmentOf$4 = new FragmentOfKt$fragmentOf$4(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$4, kind, emptyList));
        aVar.p(aVar2);
        return new Pair<>(aVar, aVar2);
    }

    public static final /* synthetic */ <R extends Fragment, T1> Pair<a, d<R>> f(a aVar, Function1<? super T1, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$3 fragmentOfKt$fragmentOf$3 = new FragmentOfKt$fragmentOf$3(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$3, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar2.f();
        Pair<a, d<R>> pair = new Pair<>(aVar, aVar2);
        options.invoke(f10);
        aVar.p(aVar2);
        aVar.q(aVar2);
        if (f10.p() && (aVar2 instanceof f)) {
            aVar.u((f) aVar2);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2> Pair<a, d<R>> g(a aVar, Function2<? super T1, ? super T2, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$6 fragmentOfKt$fragmentOf$6 = new FragmentOfKt$fragmentOf$6(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$6, kind, emptyList));
        aVar.p(aVar2);
        return new Pair<>(aVar, aVar2);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2> Pair<a, d<R>> h(a aVar, Function2<? super T1, ? super T2, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$5 fragmentOfKt$fragmentOf$5 = new FragmentOfKt$fragmentOf$5(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$5, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar2.f();
        Pair<a, d<R>> pair = new Pair<>(aVar, aVar2);
        options.invoke(f10);
        aVar.p(aVar2);
        aVar.q(aVar2);
        if (f10.p() && (aVar2 instanceof f)) {
            aVar.u((f) aVar2);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3> Pair<a, d<R>> i(a aVar, Function3<? super T1, ? super T2, ? super T3, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$8 fragmentOfKt$fragmentOf$8 = new FragmentOfKt$fragmentOf$8(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$8, kind, emptyList));
        aVar.p(aVar2);
        return new Pair<>(aVar, aVar2);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3> Pair<a, d<R>> j(a aVar, Function3<? super T1, ? super T2, ? super T3, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$7 fragmentOfKt$fragmentOf$7 = new FragmentOfKt$fragmentOf$7(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$7, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar2.f();
        Pair<a, d<R>> pair = new Pair<>(aVar, aVar2);
        options.invoke(f10);
        aVar.p(aVar2);
        aVar.q(aVar2);
        if (f10.p() && (aVar2 instanceof f)) {
            aVar.u((f) aVar2);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4> Pair<a, d<R>> k(a aVar, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$10 fragmentOfKt$fragmentOf$10 = new FragmentOfKt$fragmentOf$10(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$10, kind, emptyList));
        aVar.p(aVar2);
        return new Pair<>(aVar, aVar2);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4> Pair<a, d<R>> l(a aVar, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$9 fragmentOfKt$fragmentOf$9 = new FragmentOfKt$fragmentOf$9(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$9, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar2.f();
        Pair<a, d<R>> pair = new Pair<>(aVar, aVar2);
        options.invoke(f10);
        aVar.p(aVar2);
        aVar.q(aVar2);
        if (f10.p() && (aVar2 instanceof f)) {
            aVar.u((f) aVar2);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5> Pair<a, d<R>> m(a aVar, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$12 fragmentOfKt$fragmentOf$12 = new FragmentOfKt$fragmentOf$12(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$12, kind, emptyList));
        aVar.p(aVar2);
        return new Pair<>(aVar, aVar2);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5> Pair<a, d<R>> n(a aVar, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$11 fragmentOfKt$fragmentOf$11 = new FragmentOfKt$fragmentOf$11(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$11, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar2.f();
        Pair<a, d<R>> pair = new Pair<>(aVar, aVar2);
        options.invoke(f10);
        aVar.p(aVar2);
        aVar.q(aVar2);
        if (f10.p() && (aVar2 instanceof f)) {
            aVar.u((f) aVar2);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6> Pair<a, d<R>> o(a aVar, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$14 fragmentOfKt$fragmentOf$14 = new FragmentOfKt$fragmentOf$14(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$14, kind, emptyList));
        aVar.p(aVar2);
        return new Pair<>(aVar, aVar2);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6> Pair<a, d<R>> p(a aVar, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$13 fragmentOfKt$fragmentOf$13 = new FragmentOfKt$fragmentOf$13(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$13, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar2.f();
        Pair<a, d<R>> pair = new Pair<>(aVar, aVar2);
        options.invoke(f10);
        aVar.p(aVar2);
        aVar.q(aVar2);
        if (f10.p() && (aVar2 instanceof f)) {
            aVar.u((f) aVar2);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6, T7> Pair<a, d<R>> q(a aVar, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$16 fragmentOfKt$fragmentOf$16 = new FragmentOfKt$fragmentOf$16(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$16, kind, emptyList));
        aVar.p(aVar2);
        return new Pair<>(aVar, aVar2);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6, T7> Pair<a, d<R>> r(a aVar, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$15 fragmentOfKt$fragmentOf$15 = new FragmentOfKt$fragmentOf$15(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$15, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar2.f();
        Pair<a, d<R>> pair = new Pair<>(aVar, aVar2);
        options.invoke(f10);
        aVar.p(aVar2);
        aVar.q(aVar2);
        if (f10.p() && (aVar2 instanceof f)) {
            aVar.u((f) aVar2);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6, T7, T8> Pair<a, d<R>> s(a aVar, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$18 fragmentOfKt$fragmentOf$18 = new FragmentOfKt$fragmentOf$18(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$18, kind, emptyList));
        aVar.p(aVar2);
        return new Pair<>(aVar, aVar2);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6, T7, T8> Pair<a, d<R>> t(a aVar, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$17 fragmentOfKt$fragmentOf$17 = new FragmentOfKt$fragmentOf$17(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$17, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar2.f();
        Pair<a, d<R>> pair = new Pair<>(aVar, aVar2);
        options.invoke(f10);
        aVar.p(aVar2);
        aVar.q(aVar2);
        if (f10.p() && (aVar2 instanceof f)) {
            aVar.u((f) aVar2);
        }
        return pair;
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6, T7, T8, T9> Pair<a, d<R>> u(a aVar, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$20 fragmentOfKt$fragmentOf$20 = new FragmentOfKt$fragmentOf$20(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$20, kind, emptyList));
        aVar.p(aVar2);
        return new Pair<>(aVar, aVar2);
    }

    public static final /* synthetic */ <R extends Fragment, T1, T2, T3, T4, T5, T6, T7, T8, T9> Pair<a, d<R>> v(a aVar, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        FragmentOfKt$fragmentOf$19 fragmentOfKt$fragmentOf$19 = new FragmentOfKt$fragmentOf$19(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, fragmentOfKt$fragmentOf$19, kind, emptyList));
        org.koin.core.definition.a<?> f10 = aVar2.f();
        Pair<a, d<R>> pair = new Pair<>(aVar, aVar2);
        options.invoke(f10);
        aVar.p(aVar2);
        aVar.q(aVar2);
        if (f10.p() && (aVar2 instanceof f)) {
            aVar.u((f) aVar2);
        }
        return pair;
    }
}
