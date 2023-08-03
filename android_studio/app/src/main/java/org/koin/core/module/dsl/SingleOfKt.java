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
import org.koin.core.instance.f;
import z8.c;

/* compiled from: SingleOf.kt */
@Metadata(bv = {}, d1 = {"\u0000v\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001ac\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\tj\b\u0012\u0004\u0012\u00028\u0000`\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u000e\b\u0004\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001aD\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\tj\b\u0012\u0004\u0012\u00028\u0000`\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u000e\b\u0004\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086\bø\u0001\u0000\u001aq\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\tj\b\u0012\u0004\u0012\u00028\u0000`\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001*\u00020\u00012\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u00042\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001aH\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\t\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001*\u00020\u00012\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u0004H\u0086\bø\u0001\u0000\u001a\u007f\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\tj\b\u0012\u0004\u0012\u00028\u0000`\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001*\u00020\u00012\u001a\b\u0004\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00000\u00122\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001aV\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\t\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001*\u00020\u00012\u001a\b\u0004\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00000\u0012H\u0086\bø\u0001\u0000\u001a\u008d\u0001\u0010\u0017\u001a\u001e\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\tj\b\u0012\u0004\u0012\u00028\u0000`\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001\"\u0006\b\u0003\u0010\u0015\u0018\u0001*\u00020\u00012 \b\u0004\u0010\u0003\u001a\u001a\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u00000\u00162\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001ad\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\t\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001\"\u0006\b\u0003\u0010\u0015\u0018\u0001*\u00020\u00012 \b\u0004\u0010\u0003\u001a\u001a\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u00000\u0016H\u0086\bø\u0001\u0000\u001a\u009b\u0001\u0010\u001b\u001a\u001e\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\tj\b\u0012\u0004\u0012\u00028\u0000`\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001\"\u0006\b\u0003\u0010\u0015\u0018\u0001\"\u0006\b\u0004\u0010\u0019\u0018\u0001*\u00020\u00012&\b\u0004\u0010\u0003\u001a \u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00000\u001a2\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001ar\u0010\u001c\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\t\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001\"\u0006\b\u0003\u0010\u0015\u0018\u0001\"\u0006\b\u0004\u0010\u0019\u0018\u0001*\u00020\u00012&\b\u0004\u0010\u0003\u001a \u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00000\u001aH\u0086\bø\u0001\u0000\u001a©\u0001\u0010\u001f\u001a\u001e\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\tj\b\u0012\u0004\u0012\u00028\u0000`\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001\"\u0006\b\u0003\u0010\u0015\u0018\u0001\"\u0006\b\u0004\u0010\u0019\u0018\u0001\"\u0006\b\u0005\u0010\u001d\u0018\u0001*\u00020\u00012,\b\u0004\u0010\u0003\u001a&\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u00000\u001e2\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001a\u0080\u0001\u0010 \u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\t\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001\"\u0006\b\u0003\u0010\u0015\u0018\u0001\"\u0006\b\u0004\u0010\u0019\u0018\u0001\"\u0006\b\u0005\u0010\u001d\u0018\u0001*\u00020\u00012,\b\u0004\u0010\u0003\u001a&\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u00000\u001eH\u0086\bø\u0001\u0000\u001a·\u0001\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\tj\b\u0012\u0004\u0012\u00028\u0000`\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001\"\u0006\b\u0003\u0010\u0015\u0018\u0001\"\u0006\b\u0004\u0010\u0019\u0018\u0001\"\u0006\b\u0005\u0010\u001d\u0018\u0001\"\u0006\b\u0006\u0010!\u0018\u0001*\u00020\u000122\b\u0004\u0010\u0003\u001a,\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u00000\"2\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001a\u008e\u0001\u0010$\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\t\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001\"\u0006\b\u0003\u0010\u0015\u0018\u0001\"\u0006\b\u0004\u0010\u0019\u0018\u0001\"\u0006\b\u0005\u0010\u001d\u0018\u0001\"\u0006\b\u0006\u0010!\u0018\u0001*\u00020\u000122\b\u0004\u0010\u0003\u001a,\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u00000\"H\u0086\bø\u0001\u0000\u001aÅ\u0001\u0010'\u001a\u001e\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\tj\b\u0012\u0004\u0012\u00028\u0000`\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001\"\u0006\b\u0003\u0010\u0015\u0018\u0001\"\u0006\b\u0004\u0010\u0019\u0018\u0001\"\u0006\b\u0005\u0010\u001d\u0018\u0001\"\u0006\b\u0006\u0010!\u0018\u0001\"\u0006\b\u0007\u0010%\u0018\u0001*\u00020\u000128\b\u0004\u0010\u0003\u001a2\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\u00000&2\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001a\u009c\u0001\u0010(\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\t\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001\"\u0006\b\u0003\u0010\u0015\u0018\u0001\"\u0006\b\u0004\u0010\u0019\u0018\u0001\"\u0006\b\u0005\u0010\u001d\u0018\u0001\"\u0006\b\u0006\u0010!\u0018\u0001\"\u0006\b\u0007\u0010%\u0018\u0001*\u00020\u000128\b\u0004\u0010\u0003\u001a2\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\u00000&H\u0086\bø\u0001\u0000\u001aÓ\u0001\u0010+\u001a\u001e\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\tj\b\u0012\u0004\u0012\u00028\u0000`\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001\"\u0006\b\u0003\u0010\u0015\u0018\u0001\"\u0006\b\u0004\u0010\u0019\u0018\u0001\"\u0006\b\u0005\u0010\u001d\u0018\u0001\"\u0006\b\u0006\u0010!\u0018\u0001\"\u0006\b\u0007\u0010%\u0018\u0001\"\u0006\b\b\u0010)\u0018\u0001*\u00020\u00012>\b\u0004\u0010\u0003\u001a8\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\u00000*2\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001aª\u0001\u0010,\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\t\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001\"\u0006\b\u0003\u0010\u0015\u0018\u0001\"\u0006\b\u0004\u0010\u0019\u0018\u0001\"\u0006\b\u0005\u0010\u001d\u0018\u0001\"\u0006\b\u0006\u0010!\u0018\u0001\"\u0006\b\u0007\u0010%\u0018\u0001\"\u0006\b\b\u0010)\u0018\u0001*\u00020\u00012>\b\u0004\u0010\u0003\u001a8\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\u00000*H\u0086\bø\u0001\u0000\u001aá\u0001\u0010/\u001a\u001e\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\tj\b\u0012\u0004\u0012\u00028\u0000`\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001\"\u0006\b\u0003\u0010\u0015\u0018\u0001\"\u0006\b\u0004\u0010\u0019\u0018\u0001\"\u0006\b\u0005\u0010\u001d\u0018\u0001\"\u0006\b\u0006\u0010!\u0018\u0001\"\u0006\b\u0007\u0010%\u0018\u0001\"\u0006\b\b\u0010)\u0018\u0001\"\u0006\b\t\u0010-\u0018\u0001*\u00020\u00012D\b\u0004\u0010\u0003\u001a>\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\u00000.2\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001a¸\u0001\u00100\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\t\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001\"\u0006\b\u0003\u0010\u0015\u0018\u0001\"\u0006\b\u0004\u0010\u0019\u0018\u0001\"\u0006\b\u0005\u0010\u001d\u0018\u0001\"\u0006\b\u0006\u0010!\u0018\u0001\"\u0006\b\u0007\u0010%\u0018\u0001\"\u0006\b\b\u0010)\u0018\u0001\"\u0006\b\t\u0010-\u0018\u0001*\u00020\u00012D\b\u0004\u0010\u0003\u001a>\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\u00000.H\u0086\bø\u0001\u0000\u001aï\u0001\u00103\u001a\u001e\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\tj\b\u0012\u0004\u0012\u00028\u0000`\u000b\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001\"\u0006\b\u0003\u0010\u0015\u0018\u0001\"\u0006\b\u0004\u0010\u0019\u0018\u0001\"\u0006\b\u0005\u0010\u001d\u0018\u0001\"\u0006\b\u0006\u0010!\u0018\u0001\"\u0006\b\u0007\u0010%\u0018\u0001\"\u0006\b\b\u0010)\u0018\u0001\"\u0006\b\t\u0010-\u0018\u0001\"\u0006\b\n\u00101\u0018\u0001*\u00020\u00012J\b\u0004\u0010\u0003\u001aD\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\n\u0012\u0004\u0012\u00028\u0000022\u001d\u0010\b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001aÆ\u0001\u00104\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\t\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u000e\u0018\u0001\"\u0006\b\u0002\u0010\u0011\u0018\u0001\"\u0006\b\u0003\u0010\u0015\u0018\u0001\"\u0006\b\u0004\u0010\u0019\u0018\u0001\"\u0006\b\u0005\u0010\u001d\u0018\u0001\"\u0006\b\u0006\u0010!\u0018\u0001\"\u0006\b\u0007\u0010%\u0018\u0001\"\u0006\b\b\u0010)\u0018\u0001\"\u0006\b\t\u0010-\u0018\u0001\"\u0006\b\n\u00101\u0018\u0001*\u00020\u00012J\b\u0004\u0010\u0003\u001aD\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u0005\u0012\u0004\u0012\u00028\u0006\u0012\u0004\u0012\u00028\u0007\u0012\u0004\u0012\u00028\b\u0012\u0004\u0012\u00028\t\u0012\u0004\u0012\u00028\n\u0012\u0004\u0012\u00028\u000002H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00065"}, d2 = {"R", "Lx8/a;", "Lkotlin/Function0;", "constructor", "Lkotlin/Function1;", "Lorg/koin/core/definition/a;", "", "Lkotlin/ExtensionFunctionType;", "options", "Lkotlin/Pair;", "Lorg/koin/core/instance/d;", "Lorg/koin/core/module/KoinDefinition;", "b", "a", "T1", "f", "e", "T2", "Lkotlin/Function2;", "h", "g", "T3", "Lkotlin/Function3;", "j", ContextChain.TAG_INFRA, "T4", "Lkotlin/Function4;", "l", "k", "T5", "Lkotlin/Function5;", "n", "m", "T6", "Lkotlin/Function6;", "p", "o", "T7", "Lkotlin/Function7;", "r", "q", "T8", "Lkotlin/Function8;", "t", "s", "T9", "Lkotlin/Function9;", "v", "u", "T10", "Lkotlin/Function10;", "d", "c", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class SingleOfKt {
    public static final /* synthetic */ <R> Pair<x8.a, d<R>> a(x8.a aVar, Function0<? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$2 singleOfKt$singleOf$2 = new SingleOfKt$singleOf$2(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$2, kind, emptyList));
        aVar.p(fVar);
        if (aVar.l()) {
            aVar.u(fVar);
        }
        return new Pair<>(aVar, fVar);
    }

    public static final /* synthetic */ <R> Pair<x8.a, d<R>> b(x8.a aVar, Function0<? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$1 singleOfKt$singleOf$1 = new SingleOfKt$singleOf$1(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$1, kind, emptyList));
        org.koin.core.definition.a f10 = fVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(aVar, fVar);
        options.invoke(f10);
        aVar.p(fVar);
        aVar.q(fVar);
        if (f10.p()) {
            aVar.u(fVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> Pair<x8.a, d<R>> c(x8.a aVar, Function10<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$22 singleOfKt$singleOf$22 = new SingleOfKt$singleOf$22(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$22, kind, emptyList));
        aVar.p(fVar);
        if (aVar.l()) {
            aVar.u(fVar);
        }
        return new Pair<>(aVar, fVar);
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> Pair<x8.a, d<R>> d(x8.a aVar, Function10<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$21 singleOfKt$singleOf$21 = new SingleOfKt$singleOf$21(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$21, kind, emptyList));
        org.koin.core.definition.a f10 = fVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(aVar, fVar);
        options.invoke(f10);
        aVar.p(fVar);
        aVar.q(fVar);
        if (f10.p()) {
            aVar.u(fVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1> Pair<x8.a, d<R>> e(x8.a aVar, Function1<? super T1, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$4 singleOfKt$singleOf$4 = new SingleOfKt$singleOf$4(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$4, kind, emptyList));
        aVar.p(fVar);
        if (aVar.l()) {
            aVar.u(fVar);
        }
        return new Pair<>(aVar, fVar);
    }

    public static final /* synthetic */ <R, T1> Pair<x8.a, d<R>> f(x8.a aVar, Function1<? super T1, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$3 singleOfKt$singleOf$3 = new SingleOfKt$singleOf$3(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$3, kind, emptyList));
        org.koin.core.definition.a f10 = fVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(aVar, fVar);
        options.invoke(f10);
        aVar.p(fVar);
        aVar.q(fVar);
        if (f10.p()) {
            aVar.u(fVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2> Pair<x8.a, d<R>> g(x8.a aVar, Function2<? super T1, ? super T2, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$6 singleOfKt$singleOf$6 = new SingleOfKt$singleOf$6(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$6, kind, emptyList));
        aVar.p(fVar);
        if (aVar.l()) {
            aVar.u(fVar);
        }
        return new Pair<>(aVar, fVar);
    }

    public static final /* synthetic */ <R, T1, T2> Pair<x8.a, d<R>> h(x8.a aVar, Function2<? super T1, ? super T2, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$5 singleOfKt$singleOf$5 = new SingleOfKt$singleOf$5(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$5, kind, emptyList));
        org.koin.core.definition.a f10 = fVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(aVar, fVar);
        options.invoke(f10);
        aVar.p(fVar);
        aVar.q(fVar);
        if (f10.p()) {
            aVar.u(fVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2, T3> Pair<x8.a, d<R>> i(x8.a aVar, Function3<? super T1, ? super T2, ? super T3, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$8 singleOfKt$singleOf$8 = new SingleOfKt$singleOf$8(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$8, kind, emptyList));
        aVar.p(fVar);
        if (aVar.l()) {
            aVar.u(fVar);
        }
        return new Pair<>(aVar, fVar);
    }

    public static final /* synthetic */ <R, T1, T2, T3> Pair<x8.a, d<R>> j(x8.a aVar, Function3<? super T1, ? super T2, ? super T3, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$7 singleOfKt$singleOf$7 = new SingleOfKt$singleOf$7(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$7, kind, emptyList));
        org.koin.core.definition.a f10 = fVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(aVar, fVar);
        options.invoke(f10);
        aVar.p(fVar);
        aVar.q(fVar);
        if (f10.p()) {
            aVar.u(fVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4> Pair<x8.a, d<R>> k(x8.a aVar, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$10 singleOfKt$singleOf$10 = new SingleOfKt$singleOf$10(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$10, kind, emptyList));
        aVar.p(fVar);
        if (aVar.l()) {
            aVar.u(fVar);
        }
        return new Pair<>(aVar, fVar);
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4> Pair<x8.a, d<R>> l(x8.a aVar, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$9 singleOfKt$singleOf$9 = new SingleOfKt$singleOf$9(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$9, kind, emptyList));
        org.koin.core.definition.a f10 = fVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(aVar, fVar);
        options.invoke(f10);
        aVar.p(fVar);
        aVar.q(fVar);
        if (f10.p()) {
            aVar.u(fVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5> Pair<x8.a, d<R>> m(x8.a aVar, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$12 singleOfKt$singleOf$12 = new SingleOfKt$singleOf$12(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$12, kind, emptyList));
        aVar.p(fVar);
        if (aVar.l()) {
            aVar.u(fVar);
        }
        return new Pair<>(aVar, fVar);
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5> Pair<x8.a, d<R>> n(x8.a aVar, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$11 singleOfKt$singleOf$11 = new SingleOfKt$singleOf$11(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$11, kind, emptyList));
        org.koin.core.definition.a f10 = fVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(aVar, fVar);
        options.invoke(f10);
        aVar.p(fVar);
        aVar.q(fVar);
        if (f10.p()) {
            aVar.u(fVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6> Pair<x8.a, d<R>> o(x8.a aVar, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$14 singleOfKt$singleOf$14 = new SingleOfKt$singleOf$14(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$14, kind, emptyList));
        aVar.p(fVar);
        if (aVar.l()) {
            aVar.u(fVar);
        }
        return new Pair<>(aVar, fVar);
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6> Pair<x8.a, d<R>> p(x8.a aVar, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$13 singleOfKt$singleOf$13 = new SingleOfKt$singleOf$13(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$13, kind, emptyList));
        org.koin.core.definition.a f10 = fVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(aVar, fVar);
        options.invoke(f10);
        aVar.p(fVar);
        aVar.q(fVar);
        if (f10.p()) {
            aVar.u(fVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7> Pair<x8.a, d<R>> q(x8.a aVar, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$16 singleOfKt$singleOf$16 = new SingleOfKt$singleOf$16(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$16, kind, emptyList));
        aVar.p(fVar);
        if (aVar.l()) {
            aVar.u(fVar);
        }
        return new Pair<>(aVar, fVar);
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7> Pair<x8.a, d<R>> r(x8.a aVar, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$15 singleOfKt$singleOf$15 = new SingleOfKt$singleOf$15(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$15, kind, emptyList));
        org.koin.core.definition.a f10 = fVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(aVar, fVar);
        options.invoke(f10);
        aVar.p(fVar);
        aVar.q(fVar);
        if (f10.p()) {
            aVar.u(fVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7, T8> Pair<x8.a, d<R>> s(x8.a aVar, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$18 singleOfKt$singleOf$18 = new SingleOfKt$singleOf$18(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$18, kind, emptyList));
        aVar.p(fVar);
        if (aVar.l()) {
            aVar.u(fVar);
        }
        return new Pair<>(aVar, fVar);
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7, T8> Pair<x8.a, d<R>> t(x8.a aVar, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$17 singleOfKt$singleOf$17 = new SingleOfKt$singleOf$17(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$17, kind, emptyList));
        org.koin.core.definition.a f10 = fVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(aVar, fVar);
        options.invoke(f10);
        aVar.p(fVar);
        aVar.q(fVar);
        if (f10.p()) {
            aVar.u(fVar);
        }
        return pair;
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7, T8, T9> Pair<x8.a, d<R>> u(x8.a aVar, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> constructor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$20 singleOfKt$singleOf$20 = new SingleOfKt$singleOf$20(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$20, kind, emptyList));
        aVar.p(fVar);
        if (aVar.l()) {
            aVar.u(fVar);
        }
        return new Pair<>(aVar, fVar);
    }

    public static final /* synthetic */ <R, T1, T2, T3, T4, T5, T6, T7, T8, T9> Pair<x8.a, d<R>> v(x8.a aVar, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> constructor, Function1<? super org.koin.core.definition.a<R>, Unit> options) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.needClassReification();
        SingleOfKt$singleOf$19 singleOfKt$singleOf$19 = new SingleOfKt$singleOf$19(constructor);
        c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), null, singleOfKt$singleOf$19, kind, emptyList));
        org.koin.core.definition.a f10 = fVar.f();
        Pair<x8.a, d<R>> pair = new Pair<>(aVar, fVar);
        options.invoke(f10);
        aVar.p(fVar);
        aVar.q(fVar);
        if (f10.p()) {
            aVar.u(fVar);
        }
        return pair;
    }
}
