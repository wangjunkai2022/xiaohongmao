package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.MainThread;
import androidx.annotation.NavigationRes;
import androidx.annotation.RestrictTo;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavControllerViewModel;
import androidx.navigation.NavDeepLinkRequest;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator;
import com.google.android.gms.common.internal.x;
import io.sentry.e3;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.h0;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j0;
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.flow.s;
import kotlinx.coroutines.flow.t;
import kotlinx.coroutines.flow.z;
import m8.g;
import m8.h;

/* compiled from: NavController.kt */
@Metadata(bv = {}, d1 = {"\u0000â\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001d\b\u0016\u0018\u0000 á\u00012\u00020\u0001:\u0006á\u0001â\u0001ã\u0001B\u0011\u0012\u0006\u0010r\u001a\u00020q¢\u0006\u0006\bß\u0001\u0010à\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J[\u0010\u0014\u001a\u00020\u0005*\n\u0012\u0006\b\u0001\u0012\u00020\b0\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2#\b\u0002\u0010\u0013\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u00050\u000fH\u0002JI\u0010\u0018\u001a\u00020\u0005*\n\u0012\u0006\b\u0001\u0012\u00020\b0\u00072\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00162#\b\u0002\u0010\u0013\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00050\u000fH\u0002J$\u0010\u0018\u001a\u00020\u00162\b\b\u0001\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0016H\u0003J*\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00022\b\b\u0002\u0010\u0017\u001a\u00020\u00162\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J\u0012\u0010 \u001a\u00020\u00162\b\b\u0001\u0010\u001a\u001a\u00020\u0019H\u0003J\b\u0010!\u001a\u00020\u0016H\u0002J\b\u0010\"\u001a\u00020\u0016H\u0002J\b\u0010#\u001a\u00020\u0016H\u0002J\u0012\u0010&\u001a\u00020\u00052\b\u0010%\u001a\u0004\u0018\u00010$H\u0003J\u0012\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010(\u001a\u00020'H\u0002J\u0018\u0010+\u001a\u0004\u0018\u00010\b*\u00020\b2\b\b\u0001\u0010\u001a\u001a\u00020\u0019H\u0002J.\u0010.\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\b2\b\u0010-\u001a\u0004\u0018\u00010$2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0003J.\u00100\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00192\b\u0010-\u001a\u0004\u0018\u00010$2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002J\u001e\u00102\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u000e\u00101\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cH\u0002J2\u00105\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\b2\b\u00103\u001a\u0004\u0018\u00010$2\u0006\u0010\u0012\u001a\u00020\u00022\u000e\b\u0002\u00104\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0002J\b\u00106\u001a\u00020\u0005H\u0002J\u0019\u00109\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0000¢\u0006\u0004\b7\u00108J\u0010\u0010<\u001a\u00020\u00052\u0006\u0010;\u001a\u00020:H\u0016J\u0010\u0010=\u001a\u00020\u00052\u0006\u0010;\u001a\u00020:H\u0016J\b\u0010>\u001a\u00020\u0016H\u0017J\u001a\u0010>\u001a\u00020\u00162\b\b\u0001\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0016H\u0017J\"\u0010>\u001a\u00020\u00162\b\b\u0001\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0017J\"\u0010>\u001a\u00020\u00162\u0006\u0010?\u001a\u00020)2\u0006\u0010\u001b\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0016H\u0007J%\u0010D\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00022\f\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00050@H\u0000¢\u0006\u0004\bB\u0010CJ\u0010\u0010E\u001a\u00020\u00162\u0006\u0010?\u001a\u00020)H\u0007J\u0012\u0010E\u001a\u00020\u00162\b\b\u0001\u0010\u001a\u001a\u00020\u0019H\u0007J\b\u0010F\u001a\u00020\u0016H\u0017J\u000f\u0010I\u001a\u00020\u0005H\u0000¢\u0006\u0004\bG\u0010HJ\u0015\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0000¢\u0006\u0004\bJ\u0010KJ\u0012\u0010N\u001a\u00020\u00052\b\b\u0001\u0010M\u001a\u00020\u0019H\u0017J\u001c\u0010N\u001a\u00020\u00052\b\b\u0001\u0010M\u001a\u00020\u00192\b\u0010%\u001a\u0004\u0018\u00010$H\u0017J\u001a\u0010N\u001a\u00020\u00052\u0006\u0010P\u001a\u00020O2\b\u0010%\u001a\u0004\u0018\u00010$H\u0017J\u0012\u0010S\u001a\u00020\u00162\b\u0010R\u001a\u0004\u0018\u00010QH\u0017J\u0014\u0010+\u001a\u0004\u0018\u00010\b2\b\b\u0001\u0010\u001a\u001a\u00020\u0019H\u0007J\u0012\u0010+\u001a\u0004\u0018\u00010\b2\u0006\u0010T\u001a\u00020)H\u0007J\u0012\u0010.\u001a\u00020\u00052\b\b\u0001\u0010U\u001a\u00020\u0019H\u0017J\u001c\u0010.\u001a\u00020\u00052\b\b\u0001\u0010U\u001a\u00020\u00192\b\u0010-\u001a\u0004\u0018\u00010$H\u0017J&\u0010.\u001a\u00020\u00052\b\b\u0001\u0010U\u001a\u00020\u00192\b\u0010-\u001a\u0004\u0018\u00010$2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0017J0\u0010.\u001a\u00020\u00052\b\b\u0001\u0010U\u001a\u00020\u00192\b\u0010-\u001a\u0004\u0018\u00010$2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0017J\u0010\u0010.\u001a\u00020\u00052\u0006\u0010(\u001a\u00020VH\u0017J\u001a\u0010.\u001a\u00020\u00052\u0006\u0010(\u001a\u00020V2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0017J$\u0010.\u001a\u00020\u00052\u0006\u0010(\u001a\u00020V2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0017J\u0010\u0010.\u001a\u00020\u00052\u0006\u0010X\u001a\u00020WH\u0017J\u001a\u0010.\u001a\u00020\u00052\u0006\u0010X\u001a\u00020W2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0017J$\u0010.\u001a\u00020\u00052\u0006\u0010X\u001a\u00020W2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0017J\u0010\u0010.\u001a\u00020\u00052\u0006\u0010Z\u001a\u00020YH\u0017J\u001a\u0010.\u001a\u00020\u00052\u0006\u0010Z\u001a\u00020Y2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0017J\u0018\u0010.\u001a\u00020\u00052\u0006\u0010Z\u001a\u00020Y2\u0006\u0010\u000e\u001a\u00020\rH\u0017J'\u0010.\u001a\u00020\u00052\u0006\u0010?\u001a\u00020)2\u0017\u0010]\u001a\u0013\u0012\u0004\u0012\u00020[\u0012\u0004\u0012\u00020\u00050\u000f¢\u0006\u0002\b\\J(\u0010.\u001a\u00020\u00052\u0006\u0010?\u001a\u00020)2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007J\b\u0010_\u001a\u00020^H\u0016J\n\u0010\u0017\u001a\u0004\u0018\u00010$H\u0017J\u0012\u0010a\u001a\u00020\u00052\b\u0010`\u001a\u0004\u0018\u00010$H\u0017J\u0010\u0010d\u001a\u00020\u00052\u0006\u0010c\u001a\u00020bH\u0017J\u0010\u0010g\u001a\u00020\u00052\u0006\u0010f\u001a\u00020eH\u0017J\u0010\u0010i\u001a\u00020\u00052\u0006\u0010h\u001a\u00020\u0016H\u0017J\u0010\u0010l\u001a\u00020\u00052\u0006\u0010k\u001a\u00020jH\u0017J\u0012\u0010o\u001a\u00020n2\b\b\u0001\u0010m\u001a\u00020\u0019H\u0016J\u0012\u0010p\u001a\u00020\u00022\b\b\u0001\u0010\u001a\u001a\u00020\u0019H\u0016J\u000e\u0010p\u001a\u00020\u00022\u0006\u0010?\u001a\u00020)R\u0017\u0010r\u001a\u00020q8\u0007¢\u0006\f\n\u0004\br\u0010s\u001a\u0004\bt\u0010uR\u0018\u0010w\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\u0018\u0010z\u001a\u0004\u0018\u00010y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010{R\u0018\u0010|\u001a\u0004\u0018\u00010O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R\u0018\u0010~\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010\u007fR#\u0010\u0082\u0001\u001a\f\u0012\u0005\u0012\u00030\u0081\u0001\u0018\u00010\u0080\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R\u0019\u0010\u0084\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R%\u0010\u0086\u0001\u001a\b\u0012\u0004\u0012\u00020\u00020\u001c8WX\u0096\u0004¢\u0006\u0010\n\u0006\b\u0086\u0001\u0010\u0087\u0001\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001R$\u0010\u008b\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\t0\u008a\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R)\u0010\u008e\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\t0\u008d\u00018\u0006¢\u0006\u0010\n\u0006\b\u008e\u0001\u0010\u008f\u0001\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001R$\u0010\u0093\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0092\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R%\u0010\u0096\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0005\u0012\u00030\u0095\u00010\u0092\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0094\u0001R&\u0010\u0097\u0001\u001a\u0011\u0012\u0004\u0012\u00020\u0019\u0012\u0006\u0012\u0004\u0018\u00010)0\u0092\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0094\u0001R*\u0010\u0098\u0001\u001a\u0015\u0012\u0004\u0012\u00020)\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u001c0\u0092\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0094\u0001R\u001b\u0010\u0099\u0001\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u009a\u0001R\u001b\u0010\u009b\u0001\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u009c\u0001R\u001c\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u009d\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009f\u0001R\u001e\u0010¡\u0001\u001a\t\u0012\u0004\u0012\u00020:0 \u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¡\u0001\u0010¢\u0001R*\u0010¤\u0001\u001a\u00030£\u00018@@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b¤\u0001\u0010¥\u0001\u001a\u0006\b¦\u0001\u0010§\u0001\"\u0006\b¨\u0001\u0010©\u0001R\u0018\u0010«\u0001\u001a\u00030ª\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b«\u0001\u0010¬\u0001R\u0018\u0010®\u0001\u001a\u00030\u00ad\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b®\u0001\u0010¯\u0001R\u0019\u0010°\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010\u0085\u0001R\u001a\u0010²\u0001\u001a\u00030±\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R1\u0010µ\u0001\u001a\u001c\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0007\u0012\t\u0012\u00070´\u0001R\u00020\u00000\u0092\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bµ\u0001\u0010\u0094\u0001R6\u0010¶\u0001\u001a\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010·\u0001R6\u0010¸\u0001\u001a\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010·\u0001R$\u0010¹\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00160\u0092\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¹\u0001\u0010\u0094\u0001R\u0019\u0010º\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010»\u0001R\u001e\u0010½\u0001\u001a\t\u0012\u0004\u0012\u00020\u00020¼\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b½\u0001\u0010¾\u0001R \u0010Ã\u0001\u001a\u00020y8VX\u0096\u0084\u0002¢\u0006\u0010\n\u0006\b¿\u0001\u0010À\u0001\u001a\u0006\bÁ\u0001\u0010Â\u0001R\u001e\u0010Å\u0001\u001a\t\u0012\u0004\u0012\u00020\u00020Ä\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÅ\u0001\u0010Æ\u0001R#\u0010È\u0001\u001a\t\u0012\u0004\u0012\u00020\u00020Ç\u00018\u0006¢\u0006\u0010\n\u0006\bÈ\u0001\u0010É\u0001\u001a\u0006\bÊ\u0001\u0010Ë\u0001R\u0017\u0010Î\u0001\u001a\u00020\u00198BX\u0082\u0004¢\u0006\b\u001a\u0006\bÌ\u0001\u0010Í\u0001R'\u0010P\u001a\u00020O2\u0006\u0010P\u001a\u00020O8W@WX\u0096\u000e¢\u0006\u000f\u001a\u0006\bÏ\u0001\u0010Ð\u0001\"\u0005\bN\u0010Ñ\u0001R,\u0010Ò\u0001\u001a\u00030±\u00012\b\u0010Ò\u0001\u001a\u00030±\u00018V@WX\u0096\u000e¢\u0006\u0010\u001a\u0006\bÓ\u0001\u0010Ô\u0001\"\u0006\bÕ\u0001\u0010Ö\u0001R\u0019\u0010Ù\u0001\u001a\u0004\u0018\u00010\b8VX\u0096\u0004¢\u0006\b\u001a\u0006\b×\u0001\u0010Ø\u0001R\u0019\u0010Ü\u0001\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004¢\u0006\b\u001a\u0006\bÚ\u0001\u0010Û\u0001R\u0019\u0010Þ\u0001\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004¢\u0006\b\u001a\u0006\bÝ\u0001\u0010Û\u0001¨\u0006ä\u0001"}, d2 = {"Landroidx/navigation/NavController;", "", "Landroidx/navigation/NavBackStackEntry;", "child", "parent", "", "linkChildToParent", "Landroidx/navigation/Navigator;", "Landroidx/navigation/NavDestination;", "", "entries", "Landroidx/navigation/NavOptions;", "navOptions", "Landroidx/navigation/Navigator$Extras;", "navigatorExtras", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "backStackEntry", "handler", "navigateInternal", "popUpTo", "", "saveState", "popBackStackInternal", "", "destinationId", "inclusive", "Lkotlin/collections/ArrayDeque;", "Landroidx/navigation/NavBackStackEntryState;", "savedState", "popEntryFromBackStack", "clearBackStackInternal", "tryRelaunchUpToExplicitStack", "tryRelaunchUpToGeneratedStack", "dispatchOnDestinationChanged", "Landroid/os/Bundle;", "startDestinationArgs", "onGraphCreated", "", "deepLink", "", "findInvalidDestinationDisplayNameInDeepLink", "findDestination", "node", "args", "navigate", "id", "restoreStateInternal", "backStackState", "instantiateBackStack", "finalArgs", "restoredEntries", "addEntryToBackStack", "updateOnBackPressedCallbackEnabled", "unlinkChildFromParent$navigation_runtime_release", "(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;", "unlinkChildFromParent", "Landroidx/navigation/NavController$OnDestinationChangedListener;", x.a.f29212a, "addOnDestinationChangedListener", "removeOnDestinationChangedListener", "popBackStack", "route", "Lkotlin/Function0;", "onComplete", "popBackStackFromNavigator$navigation_runtime_release", "(Landroidx/navigation/NavBackStackEntry;Lkotlin/jvm/functions/Function0;)V", "popBackStackFromNavigator", "clearBackStack", "navigateUp", "updateBackStackLifecycle$navigation_runtime_release", "()V", "updateBackStackLifecycle", "populateVisibleEntries$navigation_runtime_release", "()Ljava/util/List;", "populateVisibleEntries", "graphResId", "setGraph", "Landroidx/navigation/NavGraph;", "graph", "Landroid/content/Intent;", "intent", "handleDeepLink", "destinationRoute", "resId", "Landroid/net/Uri;", "Landroidx/navigation/NavDeepLinkRequest;", e3.b.f83149d, "Landroidx/navigation/NavDirections;", "directions", "Landroidx/navigation/NavOptionsBuilder;", "Lkotlin/ExtensionFunctionType;", "builder", "Landroidx/navigation/NavDeepLinkBuilder;", "createDeepLink", "navState", "restoreState", "Landroidx/lifecycle/LifecycleOwner;", "owner", "setLifecycleOwner", "Landroidx/activity/OnBackPressedDispatcher;", "dispatcher", "setOnBackPressedDispatcher", "enabled", "enableOnBackPressed", "Landroidx/lifecycle/ViewModelStore;", "viewModelStore", "setViewModelStore", "navGraphId", "Landroidx/lifecycle/ViewModelStoreOwner;", "getViewModelStoreOwner", "getBackStackEntry", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "Landroid/app/Activity;", "activity", "Landroid/app/Activity;", "Landroidx/navigation/NavInflater;", "inflater", "Landroidx/navigation/NavInflater;", "_graph", "Landroidx/navigation/NavGraph;", "navigatorStateToRestore", "Landroid/os/Bundle;", "", "Landroid/os/Parcelable;", "backStackToRestore", "[Landroid/os/Parcelable;", "deepLinkHandled", "Z", "backQueue", "Lkotlin/collections/ArrayDeque;", "getBackQueue", "()Lkotlin/collections/ArrayDeque;", "Lkotlinx/coroutines/flow/t;", "_visibleEntries", "Lkotlinx/coroutines/flow/t;", "Lkotlinx/coroutines/flow/h0;", "visibleEntries", "Lkotlinx/coroutines/flow/h0;", "getVisibleEntries", "()Lkotlinx/coroutines/flow/h0;", "", "childToParentEntries", "Ljava/util/Map;", "Ljava/util/concurrent/atomic/AtomicInteger;", "parentToChildCount", "backStackMap", "backStackStates", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "onBackPressedDispatcher", "Landroidx/activity/OnBackPressedDispatcher;", "Landroidx/navigation/NavControllerViewModel;", "viewModel", "Landroidx/navigation/NavControllerViewModel;", "Ljava/util/concurrent/CopyOnWriteArrayList;", "onDestinationChangedListeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Landroidx/lifecycle/Lifecycle$State;", "hostLifecycleState", "Landroidx/lifecycle/Lifecycle$State;", "getHostLifecycleState$navigation_runtime_release", "()Landroidx/lifecycle/Lifecycle$State;", "setHostLifecycleState$navigation_runtime_release", "(Landroidx/lifecycle/Lifecycle$State;)V", "Landroidx/lifecycle/LifecycleObserver;", "lifecycleObserver", "Landroidx/lifecycle/LifecycleObserver;", "Landroidx/activity/OnBackPressedCallback;", "onBackPressedCallback", "Landroidx/activity/OnBackPressedCallback;", "enableOnBackPressedCallback", "Landroidx/navigation/NavigatorProvider;", "_navigatorProvider", "Landroidx/navigation/NavigatorProvider;", "Landroidx/navigation/NavController$NavControllerNavigatorState;", "navigatorState", "addToBackStackHandler", "Lkotlin/jvm/functions/Function1;", "popFromBackStackHandler", "entrySavedState", "dispatchReentrantCount", "I", "", "backStackEntriesToDispatch", "Ljava/util/List;", "navInflater$delegate", "Lkotlin/Lazy;", "getNavInflater", "()Landroidx/navigation/NavInflater;", "navInflater", "Lkotlinx/coroutines/flow/s;", "_currentBackStackEntryFlow", "Lkotlinx/coroutines/flow/s;", "Lkotlinx/coroutines/flow/i;", "currentBackStackEntryFlow", "Lkotlinx/coroutines/flow/i;", "getCurrentBackStackEntryFlow", "()Lkotlinx/coroutines/flow/i;", "getDestinationCountOnBackStack", "()I", "destinationCountOnBackStack", "getGraph", "()Landroidx/navigation/NavGraph;", "(Landroidx/navigation/NavGraph;)V", "navigatorProvider", "getNavigatorProvider", "()Landroidx/navigation/NavigatorProvider;", "setNavigatorProvider", "(Landroidx/navigation/NavigatorProvider;)V", "getCurrentDestination", "()Landroidx/navigation/NavDestination;", "currentDestination", "getCurrentBackStackEntry", "()Landroidx/navigation/NavBackStackEntry;", "currentBackStackEntry", "getPreviousBackStackEntry", "previousBackStackEntry", "<init>", "(Landroid/content/Context;)V", "Companion", "NavControllerNavigatorState", "OnDestinationChangedListener", "navigation-runtime_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public class NavController {
    @g
    private static final String KEY_BACK_STACK = "android-support-nav:controller:backStack";
    @g
    private static final String KEY_BACK_STACK_DEST_IDS = "android-support-nav:controller:backStackDestIds";
    @g
    private static final String KEY_BACK_STACK_IDS = "android-support-nav:controller:backStackIds";
    @g
    private static final String KEY_BACK_STACK_STATES_IDS = "android-support-nav:controller:backStackStates";
    @g
    private static final String KEY_BACK_STACK_STATES_PREFIX = "android-support-nav:controller:backStackStates:";
    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final String KEY_DEEP_LINK_ARGS = "android-support-nav:controller:deepLinkArgs";
    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final String KEY_DEEP_LINK_EXTRAS = "android-support-nav:controller:deepLinkExtras";
    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final String KEY_DEEP_LINK_HANDLED = "android-support-nav:controller:deepLinkHandled";
    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final String KEY_DEEP_LINK_IDS = "android-support-nav:controller:deepLinkIds";
    @g
    public static final String KEY_DEEP_LINK_INTENT = "android-support-nav:controller:deepLinkIntent";
    @g
    private static final String KEY_NAVIGATOR_STATE = "android-support-nav:controller:navigatorState";
    @g
    private static final String KEY_NAVIGATOR_STATE_NAMES = "android-support-nav:controller:navigatorState:names";
    @g
    private static final String TAG = "NavController";
    @g
    private final s<NavBackStackEntry> _currentBackStackEntryFlow;
    @h
    private NavGraph _graph;
    @g
    private NavigatorProvider _navigatorProvider;
    @g
    private final t<List<NavBackStackEntry>> _visibleEntries;
    @h
    private Activity activity;
    @h
    private Function1<? super NavBackStackEntry, Unit> addToBackStackHandler;
    @g
    private final ArrayDeque<NavBackStackEntry> backQueue;
    @g
    private final List<NavBackStackEntry> backStackEntriesToDispatch;
    @g
    private final Map<Integer, String> backStackMap;
    @g
    private final Map<String, ArrayDeque<NavBackStackEntryState>> backStackStates;
    @h
    private Parcelable[] backStackToRestore;
    @g
    private final Map<NavBackStackEntry, NavBackStackEntry> childToParentEntries;
    @g
    private final Context context;
    @g
    private final i<NavBackStackEntry> currentBackStackEntryFlow;
    private boolean deepLinkHandled;
    private int dispatchReentrantCount;
    private boolean enableOnBackPressedCallback;
    @g
    private final Map<NavBackStackEntry, Boolean> entrySavedState;
    @g
    private Lifecycle.State hostLifecycleState;
    @h
    private NavInflater inflater;
    @g
    private final LifecycleObserver lifecycleObserver;
    @h
    private LifecycleOwner lifecycleOwner;
    @g
    private final Lazy navInflater$delegate;
    @g
    private final Map<Navigator<? extends NavDestination>, NavControllerNavigatorState> navigatorState;
    @h
    private Bundle navigatorStateToRestore;
    @g
    private final OnBackPressedCallback onBackPressedCallback;
    @h
    private OnBackPressedDispatcher onBackPressedDispatcher;
    @g
    private final CopyOnWriteArrayList<OnDestinationChangedListener> onDestinationChangedListeners;
    @g
    private final Map<NavBackStackEntry, AtomicInteger> parentToChildCount;
    @h
    private Function1<? super NavBackStackEntry, Unit> popFromBackStackHandler;
    @h
    private NavControllerViewModel viewModel;
    @g
    private final h0<List<NavBackStackEntry>> visibleEntries;
    @g
    public static final Companion Companion = new Companion(null);
    private static boolean deepLinkSaveState = true;

    /* compiled from: NavController.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0013H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087T¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u00020\u00048\u0006X\u0087T¢\u0006\b\n\u0000\u0012\u0004\b\u000b\u0010\u0002R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087T¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Landroidx/navigation/NavController$Companion;", "", "()V", "KEY_BACK_STACK", "", "KEY_BACK_STACK_DEST_IDS", "KEY_BACK_STACK_IDS", "KEY_BACK_STACK_STATES_IDS", "KEY_BACK_STACK_STATES_PREFIX", "KEY_DEEP_LINK_ARGS", "KEY_DEEP_LINK_EXTRAS", "getKEY_DEEP_LINK_EXTRAS$annotations", "KEY_DEEP_LINK_HANDLED", "KEY_DEEP_LINK_IDS", "KEY_DEEP_LINK_INTENT", "KEY_NAVIGATOR_STATE", "KEY_NAVIGATOR_STATE_NAMES", "TAG", "deepLinkSaveState", "", "enableDeepLinkSaveState", "", "saveState", "navigation-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getKEY_DEEP_LINK_EXTRAS$annotations() {
        }

        @JvmStatic
        @NavDeepLinkSaveStateControl
        public final void enableDeepLinkSaveState(boolean z9) {
            NavController.deepLinkSaveState = z9;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavController.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u000bH\u0016J\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0017\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u0019\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0018"}, d2 = {"Landroidx/navigation/NavController$NavControllerNavigatorState;", "Landroidx/navigation/NavigatorState;", "navigator", "Landroidx/navigation/Navigator;", "Landroidx/navigation/NavDestination;", "(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V", "getNavigator", "()Landroidx/navigation/Navigator;", "addInternal", "", "backStackEntry", "Landroidx/navigation/NavBackStackEntry;", "createBackStackEntry", "destination", "arguments", "Landroid/os/Bundle;", "markTransitionComplete", "entry", "pop", "popUpTo", "saveState", "", "popWithTransition", "push", "navigation-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public final class NavControllerNavigatorState extends NavigatorState {
        @g
        private final Navigator<? extends NavDestination> navigator;
        final /* synthetic */ NavController this$0;

        public NavControllerNavigatorState(@g NavController navController, Navigator<? extends NavDestination> navigator) {
            Intrinsics.checkNotNullParameter(navigator, "navigator");
            this.this$0 = navController;
            this.navigator = navigator;
        }

        public final void addInternal(@g NavBackStackEntry backStackEntry) {
            Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
            super.push(backStackEntry);
        }

        @Override // androidx.navigation.NavigatorState
        @g
        public NavBackStackEntry createBackStackEntry(@g NavDestination destination, @h Bundle bundle) {
            Intrinsics.checkNotNullParameter(destination, "destination");
            return NavBackStackEntry.Companion.create$default(NavBackStackEntry.Companion, this.this$0.getContext(), destination, bundle, this.this$0.getHostLifecycleState$navigation_runtime_release(), this.this$0.viewModel, null, null, 96, null);
        }

        @g
        public final Navigator<? extends NavDestination> getNavigator() {
            return this.navigator;
        }

        @Override // androidx.navigation.NavigatorState
        public void markTransitionComplete(@g NavBackStackEntry entry) {
            NavControllerViewModel navControllerViewModel;
            Intrinsics.checkNotNullParameter(entry, "entry");
            boolean areEqual = Intrinsics.areEqual(this.this$0.entrySavedState.get(entry), Boolean.TRUE);
            super.markTransitionComplete(entry);
            this.this$0.entrySavedState.remove(entry);
            if (!this.this$0.getBackQueue().contains(entry)) {
                this.this$0.unlinkChildFromParent$navigation_runtime_release(entry);
                if (entry.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.CREATED)) {
                    entry.setMaxLifecycle(Lifecycle.State.DESTROYED);
                }
                ArrayDeque<NavBackStackEntry> backQueue = this.this$0.getBackQueue();
                boolean z9 = true;
                if (!(backQueue instanceof Collection) || !backQueue.isEmpty()) {
                    Iterator<NavBackStackEntry> it = backQueue.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        } else if (Intrinsics.areEqual(it.next().getId(), entry.getId())) {
                            z9 = false;
                            break;
                        }
                    }
                }
                if (z9 && !areEqual && (navControllerViewModel = this.this$0.viewModel) != null) {
                    navControllerViewModel.clear(entry.getId());
                }
                this.this$0.updateBackStackLifecycle$navigation_runtime_release();
                this.this$0._visibleEntries.c(this.this$0.populateVisibleEntries$navigation_runtime_release());
            } else if (isNavigating()) {
            } else {
                this.this$0.updateBackStackLifecycle$navigation_runtime_release();
                this.this$0._visibleEntries.c(this.this$0.populateVisibleEntries$navigation_runtime_release());
            }
        }

        @Override // androidx.navigation.NavigatorState
        public void pop(@g NavBackStackEntry popUpTo, boolean z9) {
            Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
            Navigator navigator = this.this$0._navigatorProvider.getNavigator(popUpTo.getDestination().getNavigatorName());
            if (Intrinsics.areEqual(navigator, this.navigator)) {
                Function1 function1 = this.this$0.popFromBackStackHandler;
                if (function1 != null) {
                    function1.invoke(popUpTo);
                    super.pop(popUpTo, z9);
                    return;
                }
                this.this$0.popBackStackFromNavigator$navigation_runtime_release(popUpTo, new NavController$NavControllerNavigatorState$pop$1(this, popUpTo, z9));
                return;
            }
            Object obj = this.this$0.navigatorState.get(navigator);
            Intrinsics.checkNotNull(obj);
            ((NavControllerNavigatorState) obj).pop(popUpTo, z9);
        }

        @Override // androidx.navigation.NavigatorState
        public void popWithTransition(@g NavBackStackEntry popUpTo, boolean z9) {
            Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
            super.popWithTransition(popUpTo, z9);
            this.this$0.entrySavedState.put(popUpTo, Boolean.valueOf(z9));
        }

        @Override // androidx.navigation.NavigatorState
        public void push(@g NavBackStackEntry backStackEntry) {
            Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
            Navigator navigator = this.this$0._navigatorProvider.getNavigator(backStackEntry.getDestination().getNavigatorName());
            if (Intrinsics.areEqual(navigator, this.navigator)) {
                Function1 function1 = this.this$0.addToBackStackHandler;
                if (function1 != null) {
                    function1.invoke(backStackEntry);
                    addInternal(backStackEntry);
                    return;
                }
                Log.i(NavController.TAG, "Ignoring add of destination " + backStackEntry.getDestination() + " outside of the call to navigate(). ");
                return;
            }
            Object obj = this.this$0.navigatorState.get(navigator);
            if (obj != null) {
                ((NavControllerNavigatorState) obj).push(backStackEntry);
                return;
            }
            throw new IllegalStateException(("NavigatorBackStack for " + backStackEntry.getDestination().getNavigatorName() + " should already be created").toString());
        }
    }

    /* compiled from: NavController.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH&¨\u0006\n"}, d2 = {"Landroidx/navigation/NavController$OnDestinationChangedListener;", "", "onDestinationChanged", "", "controller", "Landroidx/navigation/NavController;", "destination", "Landroidx/navigation/NavDestination;", "arguments", "Landroid/os/Bundle;", "navigation-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface OnDestinationChangedListener {
        void onDestinationChanged(@g NavController navController, @g NavDestination navDestination, @h Bundle bundle);
    }

    public NavController(@g Context context) {
        Sequence generateSequence;
        Object obj;
        List emptyList;
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        generateSequence = SequencesKt__SequencesKt.generateSequence(context, NavController$activity$1.INSTANCE);
        Iterator it = generateSequence.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((Context) obj) instanceof Activity) {
                break;
            }
        }
        this.activity = (Activity) obj;
        this.backQueue = new ArrayDeque<>();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        t<List<NavBackStackEntry>> a10 = j0.a(emptyList);
        this._visibleEntries = a10;
        this.visibleEntries = k.m(a10);
        this.childToParentEntries = new LinkedHashMap();
        this.parentToChildCount = new LinkedHashMap();
        this.backStackMap = new LinkedHashMap();
        this.backStackStates = new LinkedHashMap();
        this.onDestinationChangedListeners = new CopyOnWriteArrayList<>();
        this.hostLifecycleState = Lifecycle.State.INITIALIZED;
        this.lifecycleObserver = new LifecycleEventObserver() { // from class: androidx.navigation.a
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                NavController.m27lifecycleObserver$lambda2(NavController.this, lifecycleOwner, event);
            }
        };
        this.onBackPressedCallback = new OnBackPressedCallback() { // from class: androidx.navigation.NavController$onBackPressedCallback$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(false);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public void handleOnBackPressed() {
                NavController.this.popBackStack();
            }
        };
        this.enableOnBackPressedCallback = true;
        this._navigatorProvider = new NavigatorProvider();
        this.navigatorState = new LinkedHashMap();
        this.entrySavedState = new LinkedHashMap();
        NavigatorProvider navigatorProvider = this._navigatorProvider;
        navigatorProvider.addNavigator(new NavGraphNavigator(navigatorProvider));
        this._navigatorProvider.addNavigator(new ActivityNavigator(this.context));
        this.backStackEntriesToDispatch = new ArrayList();
        lazy = LazyKt__LazyJVMKt.lazy(new NavController$navInflater$2(this));
        this.navInflater$delegate = lazy;
        s<NavBackStackEntry> b10 = z.b(1, 0, BufferOverflow.DROP_OLDEST, 2, null);
        this._currentBackStackEntryFlow = b10;
        this.currentBackStackEntryFlow = k.l(b10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addEntryToBackStack(NavDestination navDestination, Bundle bundle, NavBackStackEntry navBackStackEntry, List<NavBackStackEntry> list) {
        ArrayDeque<NavBackStackEntry> arrayDeque;
        NavDestination navDestination2;
        List<NavBackStackEntry> list2;
        NavBackStackEntry navBackStackEntry2;
        Bundle bundle2;
        List<NavBackStackEntry> plus;
        NavBackStackEntry navBackStackEntry3;
        NavGraph navGraph;
        NavBackStackEntry navBackStackEntry4;
        List<NavBackStackEntry> list3;
        Bundle bundle3;
        Bundle bundle4 = bundle;
        NavBackStackEntry navBackStackEntry5 = navBackStackEntry;
        List<NavBackStackEntry> list4 = list;
        NavDestination destination = navBackStackEntry.getDestination();
        if (!(destination instanceof FloatingWindow)) {
            while (!getBackQueue().isEmpty() && (getBackQueue().last().getDestination() instanceof FloatingWindow) && popBackStackInternal$default(this, getBackQueue().last().getDestination().getId(), true, false, 4, null)) {
            }
        }
        ArrayDeque arrayDeque2 = new ArrayDeque();
        NavBackStackEntry navBackStackEntry6 = null;
        if (navDestination instanceof NavGraph) {
            NavDestination navDestination3 = destination;
            while (true) {
                Intrinsics.checkNotNull(navDestination3);
                NavGraph parent = navDestination3.getParent();
                if (parent != null) {
                    ListIterator<NavBackStackEntry> listIterator = list4.listIterator(list.size());
                    while (true) {
                        if (!listIterator.hasPrevious()) {
                            navBackStackEntry4 = null;
                            break;
                        }
                        navBackStackEntry4 = listIterator.previous();
                        if (Intrinsics.areEqual(navBackStackEntry4.getDestination(), parent)) {
                            break;
                        }
                    }
                    NavBackStackEntry navBackStackEntry7 = navBackStackEntry4;
                    if (navBackStackEntry7 == null) {
                        navDestination2 = destination;
                        list3 = list4;
                        bundle3 = bundle4;
                        navBackStackEntry2 = navBackStackEntry5;
                        navBackStackEntry7 = NavBackStackEntry.Companion.create$default(NavBackStackEntry.Companion, this.context, parent, bundle, getHostLifecycleState$navigation_runtime_release(), this.viewModel, null, null, 96, null);
                    } else {
                        navDestination2 = destination;
                        list3 = list4;
                        navBackStackEntry2 = navBackStackEntry5;
                        bundle3 = bundle4;
                    }
                    arrayDeque2.addFirst(navBackStackEntry7);
                    if ((!getBackQueue().isEmpty()) && getBackQueue().last().getDestination() == parent) {
                        list2 = list3;
                        bundle2 = bundle3;
                        navGraph = parent;
                        arrayDeque = arrayDeque2;
                        popEntryFromBackStack$default(this, getBackQueue().last(), false, null, 6, null);
                    } else {
                        list2 = list3;
                        bundle2 = bundle3;
                        navGraph = parent;
                        arrayDeque = arrayDeque2;
                    }
                } else {
                    navGraph = parent;
                    arrayDeque = arrayDeque2;
                    navDestination2 = destination;
                    list2 = list4;
                    navBackStackEntry2 = navBackStackEntry5;
                    bundle2 = bundle4;
                }
                if (navGraph == null || navGraph == navDestination) {
                    break;
                }
                navBackStackEntry5 = navBackStackEntry2;
                navDestination3 = navGraph;
                arrayDeque2 = arrayDeque;
                bundle4 = bundle2;
                list4 = list2;
                destination = navDestination2;
            }
        } else {
            arrayDeque = arrayDeque2;
            navDestination2 = destination;
            list2 = list4;
            navBackStackEntry2 = navBackStackEntry5;
            bundle2 = bundle4;
        }
        NavGraph destination2 = arrayDeque.isEmpty() ? navDestination2 : ((NavBackStackEntry) arrayDeque.first()).getDestination();
        while (destination2 != null && findDestination(destination2.getId()) == null) {
            destination2 = destination2.getParent();
            if (destination2 != null) {
                ListIterator<NavBackStackEntry> listIterator2 = list2.listIterator(list.size());
                while (true) {
                    if (!listIterator2.hasPrevious()) {
                        navBackStackEntry3 = null;
                        break;
                    }
                    navBackStackEntry3 = listIterator2.previous();
                    if (Intrinsics.areEqual(navBackStackEntry3.getDestination(), destination2)) {
                        break;
                    }
                }
                NavBackStackEntry navBackStackEntry8 = navBackStackEntry3;
                if (navBackStackEntry8 == null) {
                    navBackStackEntry8 = NavBackStackEntry.Companion.create$default(NavBackStackEntry.Companion, this.context, destination2, destination2.addInDefaultArgs(bundle2), getHostLifecycleState$navigation_runtime_release(), this.viewModel, null, null, 96, null);
                }
                arrayDeque.addFirst(navBackStackEntry8);
            }
        }
        if (!arrayDeque.isEmpty()) {
            navDestination2 = ((NavBackStackEntry) arrayDeque.first()).getDestination();
        }
        while (!getBackQueue().isEmpty() && (getBackQueue().last().getDestination() instanceof NavGraph) && ((NavGraph) getBackQueue().last().getDestination()).findNode(navDestination2.getId(), false) == null) {
            popEntryFromBackStack$default(this, getBackQueue().last(), false, null, 6, null);
        }
        NavBackStackEntry firstOrNull = getBackQueue().firstOrNull();
        if (firstOrNull == null) {
            firstOrNull = (NavBackStackEntry) arrayDeque.firstOrNull();
        }
        if (!Intrinsics.areEqual(firstOrNull != null ? firstOrNull.getDestination() : null, this._graph)) {
            ListIterator<NavBackStackEntry> listIterator3 = list2.listIterator(list.size());
            while (true) {
                if (!listIterator3.hasPrevious()) {
                    break;
                }
                NavBackStackEntry previous = listIterator3.previous();
                NavDestination destination3 = previous.getDestination();
                NavGraph navGraph2 = this._graph;
                Intrinsics.checkNotNull(navGraph2);
                if (Intrinsics.areEqual(destination3, navGraph2)) {
                    navBackStackEntry6 = previous;
                    break;
                }
            }
            NavBackStackEntry navBackStackEntry9 = navBackStackEntry6;
            if (navBackStackEntry9 == null) {
                NavBackStackEntry.Companion companion = NavBackStackEntry.Companion;
                Context context = this.context;
                NavGraph navGraph3 = this._graph;
                Intrinsics.checkNotNull(navGraph3);
                NavGraph navGraph4 = this._graph;
                Intrinsics.checkNotNull(navGraph4);
                navBackStackEntry9 = NavBackStackEntry.Companion.create$default(companion, context, navGraph3, navGraph4.addInDefaultArgs(bundle2), getHostLifecycleState$navigation_runtime_release(), this.viewModel, null, null, 96, null);
            }
            arrayDeque.addFirst(navBackStackEntry9);
        }
        for (NavBackStackEntry navBackStackEntry10 : arrayDeque) {
            NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(this._navigatorProvider.getNavigator(navBackStackEntry10.getDestination().getNavigatorName()));
            if (navControllerNavigatorState != null) {
                navControllerNavigatorState.addInternal(navBackStackEntry10);
            } else {
                throw new IllegalStateException(("NavigatorBackStack for " + navDestination.getNavigatorName() + " should already be created").toString());
            }
        }
        getBackQueue().addAll(arrayDeque);
        getBackQueue().add(navBackStackEntry2);
        plus = CollectionsKt___CollectionsKt.plus((Collection<? extends NavBackStackEntry>) ((Collection<? extends Object>) arrayDeque), navBackStackEntry2);
        for (NavBackStackEntry navBackStackEntry11 : plus) {
            NavGraph parent2 = navBackStackEntry11.getDestination().getParent();
            if (parent2 != null) {
                linkChildToParent(navBackStackEntry11, getBackStackEntry(parent2.getId()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void addEntryToBackStack$default(NavController navController, NavDestination navDestination, Bundle bundle, NavBackStackEntry navBackStackEntry, List list, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addEntryToBackStack");
        }
        if ((i4 & 8) != 0) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        navController.addEntryToBackStack(navDestination, bundle, navBackStackEntry, list);
    }

    @MainThread
    private final boolean clearBackStackInternal(@IdRes int i4) {
        for (NavControllerNavigatorState navControllerNavigatorState : this.navigatorState.values()) {
            navControllerNavigatorState.setNavigating(true);
        }
        boolean restoreStateInternal = restoreStateInternal(i4, null, null, null);
        for (NavControllerNavigatorState navControllerNavigatorState2 : this.navigatorState.values()) {
            navControllerNavigatorState2.setNavigating(false);
        }
        return restoreStateInternal && popBackStackInternal(i4, true, false);
    }

    private final boolean dispatchOnDestinationChanged() {
        List<NavBackStackEntry> mutableList;
        while (!getBackQueue().isEmpty() && (getBackQueue().last().getDestination() instanceof NavGraph)) {
            popEntryFromBackStack$default(this, getBackQueue().last(), false, null, 6, null);
        }
        NavBackStackEntry lastOrNull = getBackQueue().lastOrNull();
        if (lastOrNull != null) {
            this.backStackEntriesToDispatch.add(lastOrNull);
        }
        this.dispatchReentrantCount++;
        updateBackStackLifecycle$navigation_runtime_release();
        int i4 = this.dispatchReentrantCount - 1;
        this.dispatchReentrantCount = i4;
        if (i4 == 0) {
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.backStackEntriesToDispatch);
            this.backStackEntriesToDispatch.clear();
            for (NavBackStackEntry navBackStackEntry : mutableList) {
                Iterator<OnDestinationChangedListener> it = this.onDestinationChangedListeners.iterator();
                while (it.hasNext()) {
                    it.next().onDestinationChanged(this, navBackStackEntry.getDestination(), navBackStackEntry.getArguments());
                }
                this._currentBackStackEntryFlow.c(navBackStackEntry);
            }
            this._visibleEntries.c(populateVisibleEntries$navigation_runtime_release());
        }
        return lastOrNull != null;
    }

    @JvmStatic
    @NavDeepLinkSaveStateControl
    public static final void enableDeepLinkSaveState(boolean z9) {
        Companion.enableDeepLinkSaveState(z9);
    }

    private final String findInvalidDestinationDisplayNameInDeepLink(int[] iArr) {
        NavGraph navGraph;
        NavGraph navGraph2 = this._graph;
        int length = iArr.length;
        int i4 = 0;
        while (true) {
            NavDestination navDestination = null;
            if (i4 >= length) {
                return null;
            }
            int i10 = iArr[i4];
            if (i4 == 0) {
                NavGraph navGraph3 = this._graph;
                Intrinsics.checkNotNull(navGraph3);
                if (navGraph3.getId() == i10) {
                    navDestination = this._graph;
                }
            } else {
                Intrinsics.checkNotNull(navGraph2);
                navDestination = navGraph2.findNode(i10);
            }
            if (navDestination == null) {
                return NavDestination.Companion.getDisplayName(this.context, i10);
            }
            if (i4 != iArr.length - 1 && (navDestination instanceof NavGraph)) {
                while (true) {
                    navGraph = (NavGraph) navDestination;
                    Intrinsics.checkNotNull(navGraph);
                    if (!(navGraph.findNode(navGraph.getStartDestinationId()) instanceof NavGraph)) {
                        break;
                    }
                    navDestination = navGraph.findNode(navGraph.getStartDestinationId());
                }
                navGraph2 = navGraph;
            }
            i4++;
        }
    }

    private final int getDestinationCountOnBackStack() {
        ArrayDeque<NavBackStackEntry> backQueue = getBackQueue();
        int i4 = 0;
        if (!(backQueue instanceof Collection) || !backQueue.isEmpty()) {
            for (NavBackStackEntry navBackStackEntry : backQueue) {
                if ((!(navBackStackEntry.getDestination() instanceof NavGraph)) && (i4 = i4 + 1) < 0) {
                    CollectionsKt__CollectionsKt.throwCountOverflow();
                }
            }
        }
        return i4;
    }

    private final List<NavBackStackEntry> instantiateBackStack(ArrayDeque<NavBackStackEntryState> arrayDeque) {
        NavDestination graph;
        ArrayList arrayList = new ArrayList();
        NavBackStackEntry lastOrNull = getBackQueue().lastOrNull();
        if (lastOrNull == null || (graph = lastOrNull.getDestination()) == null) {
            graph = getGraph();
        }
        if (arrayDeque != null) {
            for (NavBackStackEntryState navBackStackEntryState : arrayDeque) {
                NavDestination findDestination = findDestination(graph, navBackStackEntryState.getDestinationId());
                if (findDestination != null) {
                    arrayList.add(navBackStackEntryState.instantiate(this.context, findDestination, getHostLifecycleState$navigation_runtime_release(), this.viewModel));
                    graph = findDestination;
                } else {
                    String displayName = NavDestination.Companion.getDisplayName(this.context, navBackStackEntryState.getDestinationId());
                    throw new IllegalStateException(("Restore State failed: destination " + displayName + " cannot be found from the current destination " + graph).toString());
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: lifecycleObserver$lambda-2  reason: not valid java name */
    public static final void m27lifecycleObserver$lambda2(NavController this$0, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(event, "event");
        Lifecycle.State targetState = event.getTargetState();
        Intrinsics.checkNotNullExpressionValue(targetState, "event.targetState");
        this$0.hostLifecycleState = targetState;
        if (this$0._graph != null) {
            Iterator<NavBackStackEntry> it = this$0.getBackQueue().iterator();
            while (it.hasNext()) {
                it.next().handleLifecycleEvent(event);
            }
        }
    }

    private final void linkChildToParent(NavBackStackEntry navBackStackEntry, NavBackStackEntry navBackStackEntry2) {
        this.childToParentEntries.put(navBackStackEntry, navBackStackEntry2);
        if (this.parentToChildCount.get(navBackStackEntry2) == null) {
            this.parentToChildCount.put(navBackStackEntry2, new AtomicInteger(0));
        }
        AtomicInteger atomicInteger = this.parentToChildCount.get(navBackStackEntry2);
        Intrinsics.checkNotNull(atomicInteger);
        atomicInteger.incrementAndGet();
    }

    public static /* synthetic */ void navigate$default(NavController navController, String str, NavOptions navOptions, Navigator.Extras extras, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: navigate");
        }
        if ((i4 & 2) != 0) {
            navOptions = null;
        }
        if ((i4 & 4) != 0) {
            extras = null;
        }
        navController.navigate(str, navOptions, extras);
    }

    private final void navigateInternal(Navigator<? extends NavDestination> navigator, List<NavBackStackEntry> list, NavOptions navOptions, Navigator.Extras extras, Function1<? super NavBackStackEntry, Unit> function1) {
        this.addToBackStackHandler = function1;
        navigator.navigate(list, navOptions, extras);
        this.addToBackStackHandler = null;
    }

    static /* synthetic */ void navigateInternal$default(NavController navController, Navigator navigator, List list, NavOptions navOptions, Navigator.Extras extras, Function1 function1, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: navigateInternal");
        }
        NavController$navigateInternal$1 navController$navigateInternal$1 = function1;
        if ((i4 & 8) != 0) {
            navController$navigateInternal$1 = NavController$navigateInternal$1.INSTANCE;
        }
        navController.navigateInternal(navigator, list, navOptions, extras, navController$navigateInternal$1);
    }

    @MainThread
    private final void onGraphCreated(Bundle bundle) {
        Activity activity;
        ArrayList<String> stringArrayList;
        Bundle bundle2 = this.navigatorStateToRestore;
        if (bundle2 != null && (stringArrayList = bundle2.getStringArrayList(KEY_NAVIGATOR_STATE_NAMES)) != null) {
            Iterator<String> it = stringArrayList.iterator();
            while (it.hasNext()) {
                String name = it.next();
                NavigatorProvider navigatorProvider = this._navigatorProvider;
                Intrinsics.checkNotNullExpressionValue(name, "name");
                Navigator navigator = navigatorProvider.getNavigator(name);
                Bundle bundle3 = bundle2.getBundle(name);
                if (bundle3 != null) {
                    navigator.onRestoreState(bundle3);
                }
            }
        }
        Parcelable[] parcelableArr = this.backStackToRestore;
        boolean z9 = false;
        if (parcelableArr != null) {
            for (Parcelable parcelable : parcelableArr) {
                NavBackStackEntryState navBackStackEntryState = (NavBackStackEntryState) parcelable;
                NavDestination findDestination = findDestination(navBackStackEntryState.getDestinationId());
                if (findDestination != null) {
                    NavBackStackEntry instantiate = navBackStackEntryState.instantiate(this.context, findDestination, getHostLifecycleState$navigation_runtime_release(), this.viewModel);
                    Navigator<? extends NavDestination> navigator2 = this._navigatorProvider.getNavigator(findDestination.getNavigatorName());
                    Map<Navigator<? extends NavDestination>, NavControllerNavigatorState> map = this.navigatorState;
                    NavControllerNavigatorState navControllerNavigatorState = map.get(navigator2);
                    if (navControllerNavigatorState == null) {
                        navControllerNavigatorState = new NavControllerNavigatorState(this, navigator2);
                        map.put(navigator2, navControllerNavigatorState);
                    }
                    getBackQueue().add(instantiate);
                    navControllerNavigatorState.addInternal(instantiate);
                    NavGraph parent = instantiate.getDestination().getParent();
                    if (parent != null) {
                        linkChildToParent(instantiate, getBackStackEntry(parent.getId()));
                    }
                } else {
                    throw new IllegalStateException("Restoring the Navigation back stack failed: destination " + NavDestination.Companion.getDisplayName(this.context, navBackStackEntryState.getDestinationId()) + " cannot be found from the current destination " + getCurrentDestination());
                }
            }
            updateOnBackPressedCallbackEnabled();
            this.backStackToRestore = null;
        }
        Collection<Navigator<? extends NavDestination>> values = this._navigatorProvider.getNavigators().values();
        ArrayList<Navigator<? extends NavDestination>> arrayList = new ArrayList();
        for (Object obj : values) {
            if (!((Navigator) obj).isAttached()) {
                arrayList.add(obj);
            }
        }
        for (Navigator<? extends NavDestination> navigator3 : arrayList) {
            Map<Navigator<? extends NavDestination>, NavControllerNavigatorState> map2 = this.navigatorState;
            NavControllerNavigatorState navControllerNavigatorState2 = map2.get(navigator3);
            if (navControllerNavigatorState2 == null) {
                navControllerNavigatorState2 = new NavControllerNavigatorState(this, navigator3);
                map2.put(navigator3, navControllerNavigatorState2);
            }
            navigator3.onAttach(navControllerNavigatorState2);
        }
        if (this._graph != null && getBackQueue().isEmpty()) {
            if (!this.deepLinkHandled && (activity = this.activity) != null) {
                Intrinsics.checkNotNull(activity);
                if (handleDeepLink(activity.getIntent())) {
                    z9 = true;
                }
            }
            if (z9) {
                return;
            }
            NavGraph navGraph = this._graph;
            Intrinsics.checkNotNull(navGraph);
            navigate(navGraph, bundle, (NavOptions) null, (Navigator.Extras) null);
            return;
        }
        dispatchOnDestinationChanged();
    }

    public static /* synthetic */ boolean popBackStack$default(NavController navController, String str, boolean z9, boolean z10, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 4) != 0) {
                z10 = false;
            }
            return navController.popBackStack(str, z9, z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: popBackStack");
    }

    private final void popBackStackInternal(Navigator<? extends NavDestination> navigator, NavBackStackEntry navBackStackEntry, boolean z9, Function1<? super NavBackStackEntry, Unit> function1) {
        this.popFromBackStackHandler = function1;
        navigator.popBackStack(navBackStackEntry, z9);
        this.popFromBackStackHandler = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void popBackStackInternal$default(NavController navController, Navigator navigator, NavBackStackEntry navBackStackEntry, boolean z9, Function1 function1, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: popBackStackInternal");
        }
        if ((i4 & 4) != 0) {
            function1 = NavController$popBackStackInternal$1.INSTANCE;
        }
        navController.popBackStackInternal(navigator, navBackStackEntry, z9, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void popEntryFromBackStack(NavBackStackEntry navBackStackEntry, boolean z9, ArrayDeque<NavBackStackEntryState> arrayDeque) {
        NavControllerViewModel navControllerViewModel;
        h0<Set<NavBackStackEntry>> transitionsInProgress;
        Set<NavBackStackEntry> value;
        NavBackStackEntry last = getBackQueue().last();
        if (Intrinsics.areEqual(last, navBackStackEntry)) {
            getBackQueue().removeLast();
            NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(getNavigatorProvider().getNavigator(last.getDestination().getNavigatorName()));
            boolean z10 = true;
            if (!((navControllerNavigatorState == null || (transitionsInProgress = navControllerNavigatorState.getTransitionsInProgress()) == null || (value = transitionsInProgress.getValue()) == null || !value.contains(last)) ? false : true) && !this.parentToChildCount.containsKey(last)) {
                z10 = false;
            }
            Lifecycle.State currentState = last.getLifecycle().getCurrentState();
            Lifecycle.State state = Lifecycle.State.CREATED;
            if (currentState.isAtLeast(state)) {
                if (z9) {
                    last.setMaxLifecycle(state);
                    arrayDeque.addFirst(new NavBackStackEntryState(last));
                }
                if (!z10) {
                    last.setMaxLifecycle(Lifecycle.State.DESTROYED);
                    unlinkChildFromParent$navigation_runtime_release(last);
                } else {
                    last.setMaxLifecycle(state);
                }
            }
            if (z9 || z10 || (navControllerViewModel = this.viewModel) == null) {
                return;
            }
            navControllerViewModel.clear(last.getId());
            return;
        }
        throw new IllegalStateException(("Attempted to pop " + navBackStackEntry.getDestination() + ", which is not the top of the back stack (" + last.getDestination() + ')').toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void popEntryFromBackStack$default(NavController navController, NavBackStackEntry navBackStackEntry, boolean z9, ArrayDeque arrayDeque, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: popEntryFromBackStack");
        }
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        if ((i4 & 4) != 0) {
            arrayDeque = new ArrayDeque();
        }
        navController.popEntryFromBackStack(navBackStackEntry, z9, arrayDeque);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x009d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0099 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean restoreStateInternal(int r12, android.os.Bundle r13, androidx.navigation.NavOptions r14, androidx.navigation.Navigator.Extras r15) {
        /*
            r11 = this;
            java.util.Map<java.lang.Integer, java.lang.String> r0 = r11.backStackMap
            java.lang.Integer r1 = java.lang.Integer.valueOf(r12)
            boolean r0 = r0.containsKey(r1)
            r1 = 0
            if (r0 != 0) goto Le
            return r1
        Le:
            java.util.Map<java.lang.Integer, java.lang.String> r0 = r11.backStackMap
            java.lang.Integer r12 = java.lang.Integer.valueOf(r12)
            java.lang.Object r12 = r0.get(r12)
            java.lang.String r12 = (java.lang.String) r12
            java.util.Map<java.lang.Integer, java.lang.String> r0 = r11.backStackMap
            java.util.Collection r0 = r0.values()
            androidx.navigation.NavController$restoreStateInternal$1 r2 = new androidx.navigation.NavController$restoreStateInternal$1
            r2.<init>(r12)
            kotlin.collections.CollectionsKt.removeAll(r0, r2)
            java.util.Map<java.lang.String, kotlin.collections.ArrayDeque<androidx.navigation.NavBackStackEntryState>> r0 = r11.backStackStates
            java.util.Map r0 = kotlin.jvm.internal.TypeIntrinsics.asMutableMap(r0)
            java.lang.Object r12 = r0.remove(r12)
            kotlin.collections.ArrayDeque r12 = (kotlin.collections.ArrayDeque) r12
            java.util.List r12 = r11.instantiateBackStack(r12)
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Iterator r3 = r12.iterator()
        L46:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L5f
            java.lang.Object r4 = r3.next()
            r5 = r4
            androidx.navigation.NavBackStackEntry r5 = (androidx.navigation.NavBackStackEntry) r5
            androidx.navigation.NavDestination r5 = r5.getDestination()
            boolean r5 = r5 instanceof androidx.navigation.NavGraph
            if (r5 != 0) goto L46
            r2.add(r4)
            goto L46
        L5f:
            java.util.Iterator r2 = r2.iterator()
        L63:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto Laa
            java.lang.Object r3 = r2.next()
            androidx.navigation.NavBackStackEntry r3 = (androidx.navigation.NavBackStackEntry) r3
            java.lang.Object r4 = kotlin.collections.CollectionsKt.lastOrNull(r0)
            java.util.List r4 = (java.util.List) r4
            if (r4 == 0) goto L8a
            java.lang.Object r5 = kotlin.collections.CollectionsKt.last(r4)
            androidx.navigation.NavBackStackEntry r5 = (androidx.navigation.NavBackStackEntry) r5
            if (r5 == 0) goto L8a
            androidx.navigation.NavDestination r5 = r5.getDestination()
            if (r5 == 0) goto L8a
            java.lang.String r5 = r5.getNavigatorName()
            goto L8b
        L8a:
            r5 = 0
        L8b:
            androidx.navigation.NavDestination r6 = r3.getDestination()
            java.lang.String r6 = r6.getNavigatorName()
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r5 == 0) goto L9d
            r4.add(r3)
            goto L63
        L9d:
            r4 = 1
            androidx.navigation.NavBackStackEntry[] r4 = new androidx.navigation.NavBackStackEntry[r4]
            r4[r1] = r3
            java.util.List r3 = kotlin.collections.CollectionsKt.mutableListOf(r4)
            r0.add(r3)
            goto L63
        Laa:
            kotlin.jvm.internal.Ref$BooleanRef r1 = new kotlin.jvm.internal.Ref$BooleanRef
            r1.<init>()
            java.util.Iterator r0 = r0.iterator()
        Lb3:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto Led
            java.lang.Object r2 = r0.next()
            r8 = r2
            java.util.List r8 = (java.util.List) r8
            androidx.navigation.NavigatorProvider r2 = r11._navigatorProvider
            java.lang.Object r3 = kotlin.collections.CollectionsKt.first(r8)
            androidx.navigation.NavBackStackEntry r3 = (androidx.navigation.NavBackStackEntry) r3
            androidx.navigation.NavDestination r3 = r3.getDestination()
            java.lang.String r3 = r3.getNavigatorName()
            androidx.navigation.Navigator r9 = r2.getNavigator(r3)
            kotlin.jvm.internal.Ref$IntRef r5 = new kotlin.jvm.internal.Ref$IntRef
            r5.<init>()
            androidx.navigation.NavController$restoreStateInternal$4 r10 = new androidx.navigation.NavController$restoreStateInternal$4
            r2 = r10
            r3 = r1
            r4 = r12
            r6 = r11
            r7 = r13
            r2.<init>(r3, r4, r5, r6, r7)
            r3 = r11
            r4 = r9
            r5 = r8
            r6 = r14
            r7 = r15
            r8 = r10
            r3.navigateInternal(r4, r5, r6, r7, r8)
            goto Lb3
        Led:
            boolean r12 = r1.element
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController.restoreStateInternal(int, android.os.Bundle, androidx.navigation.NavOptions, androidx.navigation.Navigator$Extras):boolean");
    }

    private final boolean tryRelaunchUpToExplicitStack() {
        List mutableList;
        Object removeLast;
        Object removeLast2;
        int i4 = 0;
        if (this.deepLinkHandled) {
            Activity activity = this.activity;
            Intrinsics.checkNotNull(activity);
            Intent intent = activity.getIntent();
            Bundle extras = intent.getExtras();
            Intrinsics.checkNotNull(extras);
            int[] intArray = extras.getIntArray(KEY_DEEP_LINK_IDS);
            Intrinsics.checkNotNull(intArray);
            mutableList = ArraysKt___ArraysKt.toMutableList(intArray);
            ArrayList parcelableArrayList = extras.getParcelableArrayList(KEY_DEEP_LINK_ARGS);
            removeLast = CollectionsKt__MutableCollectionsKt.removeLast(mutableList);
            int intValue = ((Number) removeLast).intValue();
            if (parcelableArrayList != null) {
                removeLast2 = CollectionsKt__MutableCollectionsKt.removeLast(parcelableArrayList);
                Bundle bundle = (Bundle) removeLast2;
            }
            if (mutableList.isEmpty()) {
                return false;
            }
            NavDestination findDestination = findDestination(getGraph(), intValue);
            if (findDestination instanceof NavGraph) {
                intValue = NavGraph.Companion.findStartDestination((NavGraph) findDestination).getId();
            }
            NavDestination currentDestination = getCurrentDestination();
            if (currentDestination != null && intValue == currentDestination.getId()) {
                NavDeepLinkBuilder createDeepLink = createDeepLink();
                Bundle bundleOf = BundleKt.bundleOf(TuplesKt.to(KEY_DEEP_LINK_INTENT, intent));
                Bundle bundle2 = extras.getBundle(KEY_DEEP_LINK_EXTRAS);
                if (bundle2 != null) {
                    bundleOf.putAll(bundle2);
                }
                createDeepLink.setArguments(bundleOf);
                for (Object obj : mutableList) {
                    int i10 = i4 + 1;
                    if (i4 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    createDeepLink.addDestination(((Number) obj).intValue(), parcelableArrayList != null ? (Bundle) parcelableArrayList.get(i4) : null);
                    i4 = i10;
                }
                createDeepLink.createTaskStackBuilder().startActivities();
                Activity activity2 = this.activity;
                if (activity2 != null) {
                    activity2.finish();
                }
                return true;
            }
            return false;
        }
        return false;
    }

    private final boolean tryRelaunchUpToGeneratedStack() {
        NavDestination currentDestination = getCurrentDestination();
        Intrinsics.checkNotNull(currentDestination);
        int id = currentDestination.getId();
        for (NavGraph parent = currentDestination.getParent(); parent != null; parent = parent.getParent()) {
            if (parent.getStartDestinationId() != id) {
                Bundle bundle = new Bundle();
                Activity activity = this.activity;
                if (activity != null) {
                    Intrinsics.checkNotNull(activity);
                    if (activity.getIntent() != null) {
                        Activity activity2 = this.activity;
                        Intrinsics.checkNotNull(activity2);
                        if (activity2.getIntent().getData() != null) {
                            Activity activity3 = this.activity;
                            Intrinsics.checkNotNull(activity3);
                            bundle.putParcelable(KEY_DEEP_LINK_INTENT, activity3.getIntent());
                            NavGraph navGraph = this._graph;
                            Intrinsics.checkNotNull(navGraph);
                            Activity activity4 = this.activity;
                            Intrinsics.checkNotNull(activity4);
                            Intent intent = activity4.getIntent();
                            Intrinsics.checkNotNullExpressionValue(intent, "activity!!.intent");
                            NavDestination.DeepLinkMatch matchDeepLink = navGraph.matchDeepLink(new NavDeepLinkRequest(intent));
                            if (matchDeepLink != null) {
                                bundle.putAll(matchDeepLink.getDestination().addInDefaultArgs(matchDeepLink.getMatchingArgs()));
                            }
                        }
                    }
                }
                NavDeepLinkBuilder.setDestination$default(new NavDeepLinkBuilder(this), parent.getId(), (Bundle) null, 2, (Object) null).setArguments(bundle).createTaskStackBuilder().startActivities();
                Activity activity5 = this.activity;
                if (activity5 != null) {
                    activity5.finish();
                    return true;
                }
                return true;
            }
            id = parent.getId();
        }
        return false;
    }

    private final void updateOnBackPressedCallbackEnabled() {
        boolean z9 = true;
        this.onBackPressedCallback.setEnabled((!this.enableOnBackPressedCallback || getDestinationCountOnBackStack() <= 1) ? false : false);
    }

    public void addOnDestinationChangedListener(@g OnDestinationChangedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onDestinationChangedListeners.add(listener);
        if (!getBackQueue().isEmpty()) {
            NavBackStackEntry last = getBackQueue().last();
            listener.onDestinationChanged(this, last.getDestination(), last.getArguments());
        }
    }

    @MainThread
    public final boolean clearBackStack(@g String route) {
        Intrinsics.checkNotNullParameter(route, "route");
        return clearBackStack(NavDestination.Companion.createRoute(route).hashCode());
    }

    @g
    public NavDeepLinkBuilder createDeepLink() {
        return new NavDeepLinkBuilder(this);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void enableOnBackPressed(boolean z9) {
        this.enableOnBackPressedCallback = z9;
        updateOnBackPressedCallbackEnabled();
    }

    @h
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final NavDestination findDestination(@IdRes int i4) {
        NavDestination navDestination;
        NavGraph navGraph = this._graph;
        if (navGraph == null) {
            return null;
        }
        Intrinsics.checkNotNull(navGraph);
        if (navGraph.getId() == i4) {
            return this._graph;
        }
        NavBackStackEntry lastOrNull = getBackQueue().lastOrNull();
        if (lastOrNull == null || (navDestination = lastOrNull.getDestination()) == null) {
            navDestination = this._graph;
            Intrinsics.checkNotNull(navDestination);
        }
        return findDestination(navDestination, i4);
    }

    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ArrayDeque<NavBackStackEntry> getBackQueue() {
        return this.backQueue;
    }

    @g
    public NavBackStackEntry getBackStackEntry(@IdRes int i4) {
        NavBackStackEntry navBackStackEntry;
        boolean z9;
        ArrayDeque<NavBackStackEntry> backQueue = getBackQueue();
        ListIterator<NavBackStackEntry> listIterator = backQueue.listIterator(backQueue.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                navBackStackEntry = null;
                break;
            }
            navBackStackEntry = listIterator.previous();
            if (navBackStackEntry.getDestination().getId() == i4) {
                z9 = true;
                continue;
            } else {
                z9 = false;
                continue;
            }
            if (z9) {
                break;
            }
        }
        NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
        if (navBackStackEntry2 != null) {
            return navBackStackEntry2;
        }
        throw new IllegalArgumentException(("No destination with ID " + i4 + " is on the NavController's back stack. The current destination is " + getCurrentDestination()).toString());
    }

    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final Context getContext() {
        return this.context;
    }

    @h
    public NavBackStackEntry getCurrentBackStackEntry() {
        return getBackQueue().lastOrNull();
    }

    @g
    public final i<NavBackStackEntry> getCurrentBackStackEntryFlow() {
        return this.currentBackStackEntryFlow;
    }

    @h
    public NavDestination getCurrentDestination() {
        NavBackStackEntry currentBackStackEntry = getCurrentBackStackEntry();
        if (currentBackStackEntry != null) {
            return currentBackStackEntry.getDestination();
        }
        return null;
    }

    @g
    @MainThread
    public NavGraph getGraph() {
        NavGraph navGraph = this._graph;
        if (navGraph != null) {
            Objects.requireNonNull(navGraph, "null cannot be cast to non-null type androidx.navigation.NavGraph");
            return navGraph;
        }
        throw new IllegalStateException("You must call setGraph() before calling getGraph()".toString());
    }

    @g
    public final Lifecycle.State getHostLifecycleState$navigation_runtime_release() {
        if (this.lifecycleOwner == null) {
            return Lifecycle.State.CREATED;
        }
        return this.hostLifecycleState;
    }

    @g
    public NavInflater getNavInflater() {
        return (NavInflater) this.navInflater$delegate.getValue();
    }

    @g
    public NavigatorProvider getNavigatorProvider() {
        return this._navigatorProvider;
    }

    @h
    public NavBackStackEntry getPreviousBackStackEntry() {
        List reversed;
        Sequence asSequence;
        Object obj;
        reversed = CollectionsKt___CollectionsKt.reversed(getBackQueue());
        Iterator it = reversed.iterator();
        if (it.hasNext()) {
            it.next();
        }
        asSequence = SequencesKt__SequencesKt.asSequence(it);
        Iterator it2 = asSequence.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (!(((NavBackStackEntry) obj).getDestination() instanceof NavGraph)) {
                break;
            }
        }
        return (NavBackStackEntry) obj;
    }

    @g
    public ViewModelStoreOwner getViewModelStoreOwner(@IdRes int i4) {
        if (this.viewModel != null) {
            NavBackStackEntry backStackEntry = getBackStackEntry(i4);
            if (backStackEntry.getDestination() instanceof NavGraph) {
                return backStackEntry;
            }
            throw new IllegalArgumentException(("No NavGraph with ID " + i4 + " is on the NavController's back stack").toString());
        }
        throw new IllegalStateException("You must call setViewModelStore() before calling getViewModelStoreOwner().".toString());
    }

    @g
    public final h0<List<NavBackStackEntry>> getVisibleEntries() {
        return this.visibleEntries;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x003e, code lost:
        if ((r2.length == 0) != false) goto L97;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006b  */
    @androidx.annotation.MainThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean handleDeepLink(@m8.h android.content.Intent r20) {
        /*
            Method dump skipped, instructions count: 488
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController.handleDeepLink(android.content.Intent):boolean");
    }

    @MainThread
    public void navigate(@IdRes int i4) {
        navigate(i4, (Bundle) null);
    }

    @JvmOverloads
    public final void navigate(@g String route) {
        Intrinsics.checkNotNullParameter(route, "route");
        navigate$default(this, route, null, null, 6, null);
    }

    @JvmOverloads
    public final void navigate(@g String route, @h NavOptions navOptions) {
        Intrinsics.checkNotNullParameter(route, "route");
        navigate$default(this, route, navOptions, null, 4, null);
    }

    @MainThread
    public boolean navigateUp() {
        Intent intent;
        if (getDestinationCountOnBackStack() == 1) {
            Activity activity = this.activity;
            Bundle extras = (activity == null || (intent = activity.getIntent()) == null) ? null : intent.getExtras();
            if ((extras != null ? extras.getIntArray(KEY_DEEP_LINK_IDS) : null) != null) {
                return tryRelaunchUpToExplicitStack();
            }
            return tryRelaunchUpToGeneratedStack();
        }
        return popBackStack();
    }

    @MainThread
    public boolean popBackStack() {
        if (getBackQueue().isEmpty()) {
            return false;
        }
        NavDestination currentDestination = getCurrentDestination();
        Intrinsics.checkNotNull(currentDestination);
        return popBackStack(currentDestination.getId(), true);
    }

    @JvmOverloads
    @MainThread
    public final boolean popBackStack(@g String route, boolean z9) {
        Intrinsics.checkNotNullParameter(route, "route");
        return popBackStack$default(this, route, z9, false, 4, null);
    }

    public final void popBackStackFromNavigator$navigation_runtime_release(@g NavBackStackEntry popUpTo, @g Function0<Unit> onComplete) {
        Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        int indexOf = getBackQueue().indexOf(popUpTo);
        if (indexOf < 0) {
            Log.i(TAG, "Ignoring pop of " + popUpTo + " as it was not found on the current back stack");
            return;
        }
        int i4 = indexOf + 1;
        if (i4 != getBackQueue().size()) {
            popBackStackInternal(getBackQueue().get(i4).getDestination().getId(), true, false);
        }
        popEntryFromBackStack$default(this, popUpTo, false, null, 6, null);
        onComplete.invoke();
        updateOnBackPressedCallbackEnabled();
        dispatchOnDestinationChanged();
    }

    @g
    public final List<NavBackStackEntry> populateVisibleEntries$navigation_runtime_release() {
        ArrayList arrayList = new ArrayList();
        for (NavControllerNavigatorState navControllerNavigatorState : this.navigatorState.values()) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : navControllerNavigatorState.getTransitionsInProgress().getValue()) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                if ((arrayList.contains(navBackStackEntry) || navBackStackEntry.getMaxLifecycle().isAtLeast(Lifecycle.State.STARTED)) ? false : true) {
                    arrayList2.add(obj);
                }
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, arrayList2);
        }
        ArrayDeque<NavBackStackEntry> backQueue = getBackQueue();
        ArrayList arrayList3 = new ArrayList();
        for (NavBackStackEntry navBackStackEntry2 : backQueue) {
            NavBackStackEntry navBackStackEntry3 = navBackStackEntry2;
            if (!arrayList.contains(navBackStackEntry3) && navBackStackEntry3.getMaxLifecycle().isAtLeast(Lifecycle.State.STARTED)) {
                arrayList3.add(navBackStackEntry2);
            }
        }
        CollectionsKt__MutableCollectionsKt.addAll(arrayList, arrayList3);
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (!(((NavBackStackEntry) obj2).getDestination() instanceof NavGraph)) {
                arrayList4.add(obj2);
            }
        }
        return arrayList4;
    }

    public void removeOnDestinationChangedListener(@g OnDestinationChangedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onDestinationChangedListeners.remove(listener);
    }

    @CallSuper
    public void restoreState(@h Bundle bundle) {
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(this.context.getClassLoader());
        this.navigatorStateToRestore = bundle.getBundle(KEY_NAVIGATOR_STATE);
        this.backStackToRestore = bundle.getParcelableArray(KEY_BACK_STACK);
        this.backStackStates.clear();
        int[] intArray = bundle.getIntArray(KEY_BACK_STACK_DEST_IDS);
        ArrayList<String> stringArrayList = bundle.getStringArrayList(KEY_BACK_STACK_IDS);
        if (intArray != null && stringArrayList != null) {
            int length = intArray.length;
            int i4 = 0;
            int i10 = 0;
            while (i4 < length) {
                this.backStackMap.put(Integer.valueOf(intArray[i4]), stringArrayList.get(i10));
                i4++;
                i10++;
            }
        }
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList(KEY_BACK_STACK_STATES_IDS);
        if (stringArrayList2 != null) {
            for (String id : stringArrayList2) {
                Parcelable[] parcelableArray = bundle.getParcelableArray(KEY_BACK_STACK_STATES_PREFIX + id);
                if (parcelableArray != null) {
                    Map<String, ArrayDeque<NavBackStackEntryState>> map = this.backStackStates;
                    Intrinsics.checkNotNullExpressionValue(id, "id");
                    ArrayDeque<NavBackStackEntryState> arrayDeque = new ArrayDeque<>(parcelableArray.length);
                    Iterator it = ArrayIteratorKt.iterator(parcelableArray);
                    while (it.hasNext()) {
                        Parcelable parcelable = (Parcelable) it.next();
                        Objects.requireNonNull(parcelable, "null cannot be cast to non-null type androidx.navigation.NavBackStackEntryState");
                        arrayDeque.add((NavBackStackEntryState) parcelable);
                    }
                    map.put(id, arrayDeque);
                }
            }
        }
        this.deepLinkHandled = bundle.getBoolean(KEY_DEEP_LINK_HANDLED);
    }

    @h
    @CallSuper
    public Bundle saveState() {
        Bundle bundle;
        ArrayList<String> arrayList = new ArrayList<>();
        Bundle bundle2 = new Bundle();
        for (Map.Entry<String, Navigator<? extends NavDestination>> entry : this._navigatorProvider.getNavigators().entrySet()) {
            String key = entry.getKey();
            Bundle onSaveState = entry.getValue().onSaveState();
            if (onSaveState != null) {
                arrayList.add(key);
                bundle2.putBundle(key, onSaveState);
            }
        }
        if (!arrayList.isEmpty()) {
            bundle = new Bundle();
            bundle2.putStringArrayList(KEY_NAVIGATOR_STATE_NAMES, arrayList);
            bundle.putBundle(KEY_NAVIGATOR_STATE, bundle2);
        } else {
            bundle = null;
        }
        if (!getBackQueue().isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            Parcelable[] parcelableArr = new Parcelable[getBackQueue().size()];
            Iterator<NavBackStackEntry> it = getBackQueue().iterator();
            int i4 = 0;
            while (it.hasNext()) {
                parcelableArr[i4] = new NavBackStackEntryState(it.next());
                i4++;
            }
            bundle.putParcelableArray(KEY_BACK_STACK, parcelableArr);
        }
        if (!this.backStackMap.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            int[] iArr = new int[this.backStackMap.size()];
            ArrayList<String> arrayList2 = new ArrayList<>();
            int i10 = 0;
            for (Map.Entry<Integer, String> entry2 : this.backStackMap.entrySet()) {
                iArr[i10] = entry2.getKey().intValue();
                arrayList2.add(entry2.getValue());
                i10++;
            }
            bundle.putIntArray(KEY_BACK_STACK_DEST_IDS, iArr);
            bundle.putStringArrayList(KEY_BACK_STACK_IDS, arrayList2);
        }
        if (!this.backStackStates.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            ArrayList<String> arrayList3 = new ArrayList<>();
            for (Map.Entry<String, ArrayDeque<NavBackStackEntryState>> entry3 : this.backStackStates.entrySet()) {
                String key2 = entry3.getKey();
                ArrayDeque<NavBackStackEntryState> value = entry3.getValue();
                arrayList3.add(key2);
                Parcelable[] parcelableArr2 = new Parcelable[value.size()];
                int i11 = 0;
                for (NavBackStackEntryState navBackStackEntryState : value) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    parcelableArr2[i11] = navBackStackEntryState;
                    i11 = i12;
                }
                bundle.putParcelableArray(KEY_BACK_STACK_STATES_PREFIX + key2, parcelableArr2);
            }
            bundle.putStringArrayList(KEY_BACK_STACK_STATES_IDS, arrayList3);
        }
        if (this.deepLinkHandled) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(KEY_DEEP_LINK_HANDLED, this.deepLinkHandled);
        }
        return bundle;
    }

    @CallSuper
    @MainThread
    public void setGraph(@g NavGraph graph) {
        Intrinsics.checkNotNullParameter(graph, "graph");
        setGraph(graph, (Bundle) null);
    }

    public final void setHostLifecycleState$navigation_runtime_release(@g Lifecycle.State state) {
        Intrinsics.checkNotNullParameter(state, "<set-?>");
        this.hostLifecycleState = state;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setLifecycleOwner(@g LifecycleOwner owner) {
        Lifecycle lifecycle;
        Intrinsics.checkNotNullParameter(owner, "owner");
        if (Intrinsics.areEqual(owner, this.lifecycleOwner)) {
            return;
        }
        LifecycleOwner lifecycleOwner = this.lifecycleOwner;
        if (lifecycleOwner != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
            lifecycle.removeObserver(this.lifecycleObserver);
        }
        this.lifecycleOwner = owner;
        owner.getLifecycle().addObserver(this.lifecycleObserver);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setNavigatorProvider(@g NavigatorProvider navigatorProvider) {
        Intrinsics.checkNotNullParameter(navigatorProvider, "navigatorProvider");
        if (getBackQueue().isEmpty()) {
            this._navigatorProvider = navigatorProvider;
            return;
        }
        throw new IllegalStateException("NavigatorProvider must be set before setGraph call".toString());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setOnBackPressedDispatcher(@g OnBackPressedDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        if (Intrinsics.areEqual(dispatcher, this.onBackPressedDispatcher)) {
            return;
        }
        LifecycleOwner lifecycleOwner = this.lifecycleOwner;
        if (lifecycleOwner != null) {
            this.onBackPressedCallback.remove();
            this.onBackPressedDispatcher = dispatcher;
            dispatcher.addCallback(lifecycleOwner, this.onBackPressedCallback);
            Lifecycle lifecycle = lifecycleOwner.getLifecycle();
            lifecycle.removeObserver(this.lifecycleObserver);
            lifecycle.addObserver(this.lifecycleObserver);
            return;
        }
        throw new IllegalStateException("You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()".toString());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setViewModelStore(@g ViewModelStore viewModelStore) {
        Intrinsics.checkNotNullParameter(viewModelStore, "viewModelStore");
        NavControllerViewModel navControllerViewModel = this.viewModel;
        NavControllerViewModel.Companion companion = NavControllerViewModel.Companion;
        if (Intrinsics.areEqual(navControllerViewModel, companion.getInstance(viewModelStore))) {
            return;
        }
        if (getBackQueue().isEmpty()) {
            this.viewModel = companion.getInstance(viewModelStore);
            return;
        }
        throw new IllegalStateException("ViewModelStore should be set before setGraph call".toString());
    }

    @h
    public final NavBackStackEntry unlinkChildFromParent$navigation_runtime_release(@g NavBackStackEntry child) {
        Intrinsics.checkNotNullParameter(child, "child");
        NavBackStackEntry remove = this.childToParentEntries.remove(child);
        if (remove == null) {
            return null;
        }
        AtomicInteger atomicInteger = this.parentToChildCount.get(remove);
        Integer valueOf = atomicInteger != null ? Integer.valueOf(atomicInteger.decrementAndGet()) : null;
        if (valueOf != null && valueOf.intValue() == 0) {
            NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(this._navigatorProvider.getNavigator(remove.getDestination().getNavigatorName()));
            if (navControllerNavigatorState != null) {
                navControllerNavigatorState.markTransitionComplete(remove);
            }
            this.parentToChildCount.remove(remove);
        }
        return remove;
    }

    public final void updateBackStackLifecycle$navigation_runtime_release() {
        List<NavBackStackEntry> mutableList;
        Object last;
        NavDestination navDestination;
        List<NavBackStackEntry> reversed;
        h0<Set<NavBackStackEntry>> transitionsInProgress;
        Set<NavBackStackEntry> value;
        List<NavBackStackEntry> reversed2;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getBackQueue());
        if (mutableList.isEmpty()) {
            return;
        }
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) mutableList);
        NavDestination destination = ((NavBackStackEntry) last).getDestination();
        if (destination instanceof FloatingWindow) {
            reversed2 = CollectionsKt___CollectionsKt.reversed(mutableList);
            for (NavBackStackEntry navBackStackEntry : reversed2) {
                navDestination = navBackStackEntry.getDestination();
                if (!(navDestination instanceof NavGraph) && !(navDestination instanceof FloatingWindow)) {
                    break;
                }
            }
        }
        navDestination = null;
        HashMap hashMap = new HashMap();
        reversed = CollectionsKt___CollectionsKt.reversed(mutableList);
        for (NavBackStackEntry navBackStackEntry2 : reversed) {
            Lifecycle.State maxLifecycle = navBackStackEntry2.getMaxLifecycle();
            NavDestination destination2 = navBackStackEntry2.getDestination();
            if (destination != null && destination2.getId() == destination.getId()) {
                Lifecycle.State state = Lifecycle.State.RESUMED;
                if (maxLifecycle != state) {
                    NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(getNavigatorProvider().getNavigator(navBackStackEntry2.getDestination().getNavigatorName()));
                    if (!Intrinsics.areEqual((navControllerNavigatorState == null || (transitionsInProgress = navControllerNavigatorState.getTransitionsInProgress()) == null || (value = transitionsInProgress.getValue()) == null) ? null : Boolean.valueOf(value.contains(navBackStackEntry2)), Boolean.TRUE)) {
                        AtomicInteger atomicInteger = this.parentToChildCount.get(navBackStackEntry2);
                        boolean z9 = false;
                        if (atomicInteger != null && atomicInteger.get() == 0) {
                            z9 = true;
                        }
                        if (!z9) {
                            hashMap.put(navBackStackEntry2, state);
                        }
                    }
                    hashMap.put(navBackStackEntry2, Lifecycle.State.STARTED);
                }
                destination = destination.getParent();
            } else if (navDestination != null && destination2.getId() == navDestination.getId()) {
                if (maxLifecycle == Lifecycle.State.RESUMED) {
                    navBackStackEntry2.setMaxLifecycle(Lifecycle.State.STARTED);
                } else {
                    Lifecycle.State state2 = Lifecycle.State.STARTED;
                    if (maxLifecycle != state2) {
                        hashMap.put(navBackStackEntry2, state2);
                    }
                }
                navDestination = navDestination.getParent();
            } else {
                navBackStackEntry2.setMaxLifecycle(Lifecycle.State.CREATED);
            }
        }
        for (NavBackStackEntry navBackStackEntry3 : mutableList) {
            Lifecycle.State state3 = (Lifecycle.State) hashMap.get(navBackStackEntry3);
            if (state3 != null) {
                navBackStackEntry3.setMaxLifecycle(state3);
            } else {
                navBackStackEntry3.updateState();
            }
        }
    }

    @MainThread
    public final boolean clearBackStack(@IdRes int i4) {
        return clearBackStackInternal(i4) && dispatchOnDestinationChanged();
    }

    @MainThread
    public void navigate(@IdRes int i4, @h Bundle bundle) {
        navigate(i4, bundle, (NavOptions) null);
    }

    @CallSuper
    @MainThread
    public void setGraph(@NavigationRes int i4) {
        setGraph(getNavInflater().inflate(i4), (Bundle) null);
    }

    static /* synthetic */ boolean popBackStackInternal$default(NavController navController, int i4, boolean z9, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            return navController.popBackStackInternal(i4, z9, z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: popBackStackInternal");
    }

    @MainThread
    public void navigate(@IdRes int i4, @h Bundle bundle, @h NavOptions navOptions) {
        navigate(i4, bundle, navOptions, (Navigator.Extras) null);
    }

    @MainThread
    public boolean popBackStack(@IdRes int i4, boolean z9) {
        return popBackStack(i4, z9, false);
    }

    @CallSuper
    @MainThread
    public void setGraph(@NavigationRes int i4, @h Bundle bundle) {
        setGraph(getNavInflater().inflate(i4), bundle);
    }

    @MainThread
    private final boolean popBackStackInternal(@IdRes int i4, boolean z9, boolean z10) {
        List reversed;
        NavDestination navDestination;
        Sequence generateSequence;
        Sequence<NavDestination> takeWhile;
        Sequence generateSequence2;
        Sequence<NavDestination> takeWhile2;
        if (getBackQueue().isEmpty()) {
            return false;
        }
        ArrayList<Navigator<? extends NavDestination>> arrayList = new ArrayList();
        reversed = CollectionsKt___CollectionsKt.reversed(getBackQueue());
        Iterator it = reversed.iterator();
        while (true) {
            if (!it.hasNext()) {
                navDestination = null;
                break;
            }
            NavDestination destination = ((NavBackStackEntry) it.next()).getDestination();
            Navigator navigator = this._navigatorProvider.getNavigator(destination.getNavigatorName());
            if (z9 || destination.getId() != i4) {
                arrayList.add(navigator);
            }
            if (destination.getId() == i4) {
                navDestination = destination;
                break;
            }
        }
        if (navDestination == null) {
            String displayName = NavDestination.Companion.getDisplayName(this.context, i4);
            Log.i(TAG, "Ignoring popBackStack to destination " + displayName + " as it was not found on the current back stack");
            return false;
        }
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        ArrayDeque<NavBackStackEntryState> arrayDeque = new ArrayDeque<>();
        for (Navigator<? extends NavDestination> navigator2 : arrayList) {
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            popBackStackInternal(navigator2, getBackQueue().last(), z10, new NavController$popBackStackInternal$2(booleanRef2, booleanRef, this, z10, arrayDeque));
            if (!booleanRef2.element) {
                break;
            }
        }
        if (z10) {
            if (!z9) {
                generateSequence2 = SequencesKt__SequencesKt.generateSequence(navDestination, NavController$popBackStackInternal$3.INSTANCE);
                takeWhile2 = SequencesKt___SequencesKt.takeWhile(generateSequence2, new NavController$popBackStackInternal$4(this));
                for (NavDestination navDestination2 : takeWhile2) {
                    Map<Integer, String> map = this.backStackMap;
                    Integer valueOf = Integer.valueOf(navDestination2.getId());
                    NavBackStackEntryState firstOrNull = arrayDeque.firstOrNull();
                    map.put(valueOf, firstOrNull != null ? firstOrNull.getId() : null);
                }
            }
            if (!arrayDeque.isEmpty()) {
                NavBackStackEntryState first = arrayDeque.first();
                generateSequence = SequencesKt__SequencesKt.generateSequence(findDestination(first.getDestinationId()), NavController$popBackStackInternal$6.INSTANCE);
                takeWhile = SequencesKt___SequencesKt.takeWhile(generateSequence, new NavController$popBackStackInternal$7(this));
                for (NavDestination navDestination3 : takeWhile) {
                    this.backStackMap.put(Integer.valueOf(navDestination3.getId()), first.getId());
                }
                this.backStackStates.put(first.getId(), arrayDeque);
            }
        }
        updateOnBackPressedCallbackEnabled();
        return booleanRef.element;
    }

    @MainThread
    public void navigate(@IdRes int i4, @h Bundle bundle, @h NavOptions navOptions, @h Navigator.Extras extras) {
        NavDestination destination;
        int i10;
        if (getBackQueue().isEmpty()) {
            destination = this._graph;
        } else {
            destination = getBackQueue().last().getDestination();
        }
        if (destination != null) {
            NavAction action = destination.getAction(i4);
            Bundle bundle2 = null;
            if (action != null) {
                if (navOptions == null) {
                    navOptions = action.getNavOptions();
                }
                i10 = action.getDestinationId();
                Bundle defaultArguments = action.getDefaultArguments();
                if (defaultArguments != null) {
                    bundle2 = new Bundle();
                    bundle2.putAll(defaultArguments);
                }
            } else {
                i10 = i4;
            }
            if (bundle != null) {
                if (bundle2 == null) {
                    bundle2 = new Bundle();
                }
                bundle2.putAll(bundle);
            }
            if (i10 == 0 && navOptions != null && navOptions.getPopUpToId() != -1) {
                popBackStack(navOptions.getPopUpToId(), navOptions.isPopUpToInclusive());
                return;
            }
            if (i10 != 0) {
                NavDestination findDestination = findDestination(i10);
                if (findDestination == null) {
                    NavDestination.Companion companion = NavDestination.Companion;
                    String displayName = companion.getDisplayName(this.context, i10);
                    if (!(action == null)) {
                        throw new IllegalArgumentException(("Navigation destination " + displayName + " referenced from action " + companion.getDisplayName(this.context, i4) + " cannot be found from the current destination " + destination).toString());
                    }
                    throw new IllegalArgumentException("Navigation action/destination " + displayName + " cannot be found from the current destination " + destination);
                }
                navigate(findDestination, bundle2, navOptions, extras);
                return;
            }
            throw new IllegalArgumentException("Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo".toString());
        }
        throw new IllegalStateException("no current navigation node");
    }

    @MainThread
    public boolean popBackStack(@IdRes int i4, boolean z9, boolean z10) {
        return popBackStackInternal(i4, z9, z10) && dispatchOnDestinationChanged();
    }

    @CallSuper
    @MainThread
    public void setGraph(@g NavGraph graph, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(graph, "graph");
        if (!Intrinsics.areEqual(this._graph, graph)) {
            NavGraph navGraph = this._graph;
            if (navGraph != null) {
                for (Integer id : new ArrayList(this.backStackMap.keySet())) {
                    Intrinsics.checkNotNullExpressionValue(id, "id");
                    clearBackStackInternal(id.intValue());
                }
                popBackStackInternal$default(this, navGraph.getId(), true, false, 4, null);
            }
            this._graph = graph;
            onGraphCreated(bundle);
            return;
        }
        int size = graph.getNodes().size();
        for (int i4 = 0; i4 < size; i4++) {
            NavDestination newDestination = graph.getNodes().valueAt(i4);
            NavGraph navGraph2 = this._graph;
            Intrinsics.checkNotNull(navGraph2);
            navGraph2.getNodes().replace(i4, newDestination);
            ArrayDeque<NavBackStackEntry> backQueue = getBackQueue();
            ArrayList<NavBackStackEntry> arrayList = new ArrayList();
            for (NavBackStackEntry navBackStackEntry : backQueue) {
                if (newDestination != null && navBackStackEntry.getDestination().getId() == newDestination.getId()) {
                    arrayList.add(navBackStackEntry);
                }
            }
            for (NavBackStackEntry navBackStackEntry2 : arrayList) {
                Intrinsics.checkNotNullExpressionValue(newDestination, "newDestination");
                navBackStackEntry2.setDestination(newDestination);
            }
        }
    }

    private final NavDestination findDestination(NavDestination navDestination, @IdRes int i4) {
        NavGraph parent;
        if (navDestination.getId() == i4) {
            return navDestination;
        }
        if (navDestination instanceof NavGraph) {
            parent = (NavGraph) navDestination;
        } else {
            parent = navDestination.getParent();
            Intrinsics.checkNotNull(parent);
        }
        return parent.findNode(i4);
    }

    @JvmOverloads
    @MainThread
    public final boolean popBackStack(@g String route, boolean z9, boolean z10) {
        Intrinsics.checkNotNullParameter(route, "route");
        return popBackStack(NavDestination.Companion.createRoute(route).hashCode(), z9, z10);
    }

    @h
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final NavDestination findDestination(@g String destinationRoute) {
        NavGraph navGraph;
        NavGraph parent;
        Intrinsics.checkNotNullParameter(destinationRoute, "destinationRoute");
        NavGraph navGraph2 = this._graph;
        if (navGraph2 == null) {
            return null;
        }
        Intrinsics.checkNotNull(navGraph2);
        if (Intrinsics.areEqual(navGraph2.getRoute(), destinationRoute)) {
            return this._graph;
        }
        NavBackStackEntry lastOrNull = getBackQueue().lastOrNull();
        if (lastOrNull == null || (navGraph = lastOrNull.getDestination()) == null) {
            navGraph = this._graph;
            Intrinsics.checkNotNull(navGraph);
        }
        if (navGraph instanceof NavGraph) {
            parent = navGraph;
        } else {
            parent = navGraph.getParent();
            Intrinsics.checkNotNull(parent);
        }
        return parent.findNode(destinationRoute);
    }

    @g
    public final NavBackStackEntry getBackStackEntry(@g String route) {
        NavBackStackEntry navBackStackEntry;
        Intrinsics.checkNotNullParameter(route, "route");
        ArrayDeque<NavBackStackEntry> backQueue = getBackQueue();
        ListIterator<NavBackStackEntry> listIterator = backQueue.listIterator(backQueue.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                navBackStackEntry = null;
                break;
            }
            navBackStackEntry = listIterator.previous();
            if (Intrinsics.areEqual(navBackStackEntry.getDestination().getRoute(), route)) {
                break;
            }
        }
        NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
        if (navBackStackEntry2 != null) {
            return navBackStackEntry2;
        }
        throw new IllegalArgumentException(("No destination with route " + route + " is on the NavController's back stack. The current destination is " + getCurrentDestination()).toString());
    }

    @MainThread
    public void navigate(@g Uri deepLink) {
        Intrinsics.checkNotNullParameter(deepLink, "deepLink");
        navigate(new NavDeepLinkRequest(deepLink, null, null));
    }

    @MainThread
    public void navigate(@g Uri deepLink, @h NavOptions navOptions) {
        Intrinsics.checkNotNullParameter(deepLink, "deepLink");
        navigate(new NavDeepLinkRequest(deepLink, null, null), navOptions, (Navigator.Extras) null);
    }

    @MainThread
    public void navigate(@g Uri deepLink, @h NavOptions navOptions, @h Navigator.Extras extras) {
        Intrinsics.checkNotNullParameter(deepLink, "deepLink");
        navigate(new NavDeepLinkRequest(deepLink, null, null), navOptions, extras);
    }

    @MainThread
    public void navigate(@g NavDeepLinkRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        navigate(request, (NavOptions) null);
    }

    @MainThread
    public void navigate(@g NavDeepLinkRequest request, @h NavOptions navOptions) {
        Intrinsics.checkNotNullParameter(request, "request");
        navigate(request, navOptions, (Navigator.Extras) null);
    }

    @MainThread
    public void navigate(@g NavDeepLinkRequest request, @h NavOptions navOptions, @h Navigator.Extras extras) {
        Intrinsics.checkNotNullParameter(request, "request");
        NavGraph navGraph = this._graph;
        Intrinsics.checkNotNull(navGraph);
        NavDestination.DeepLinkMatch matchDeepLink = navGraph.matchDeepLink(request);
        if (matchDeepLink != null) {
            Bundle addInDefaultArgs = matchDeepLink.getDestination().addInDefaultArgs(matchDeepLink.getMatchingArgs());
            if (addInDefaultArgs == null) {
                addInDefaultArgs = new Bundle();
            }
            NavDestination destination = matchDeepLink.getDestination();
            Intent intent = new Intent();
            intent.setDataAndType(request.getUri(), request.getMimeType());
            intent.setAction(request.getAction());
            addInDefaultArgs.putParcelable(KEY_DEEP_LINK_INTENT, intent);
            navigate(destination, addInDefaultArgs, navOptions, extras);
            return;
        }
        throw new IllegalArgumentException("Navigation destination that matches request " + request + " cannot be found in the navigation graph " + this._graph);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0119 A[LOOP:1: B:44:0x0113->B:46:0x0119, LOOP_END] */
    @androidx.annotation.MainThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void navigate(androidx.navigation.NavDestination r21, android.os.Bundle r22, androidx.navigation.NavOptions r23, androidx.navigation.Navigator.Extras r24) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController.navigate(androidx.navigation.NavDestination, android.os.Bundle, androidx.navigation.NavOptions, androidx.navigation.Navigator$Extras):void");
    }

    @MainThread
    public void navigate(@g NavDirections directions) {
        Intrinsics.checkNotNullParameter(directions, "directions");
        navigate(directions.getActionId(), directions.getArguments(), (NavOptions) null);
    }

    @MainThread
    public void navigate(@g NavDirections directions, @h NavOptions navOptions) {
        Intrinsics.checkNotNullParameter(directions, "directions");
        navigate(directions.getActionId(), directions.getArguments(), navOptions);
    }

    @MainThread
    public void navigate(@g NavDirections directions, @g Navigator.Extras navigatorExtras) {
        Intrinsics.checkNotNullParameter(directions, "directions");
        Intrinsics.checkNotNullParameter(navigatorExtras, "navigatorExtras");
        navigate(directions.getActionId(), directions.getArguments(), (NavOptions) null, navigatorExtras);
    }

    public final void navigate(@g String route, @g Function1<? super NavOptionsBuilder, Unit> builder) {
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(builder, "builder");
        navigate$default(this, route, NavOptionsBuilderKt.navOptions(builder), null, 4, null);
    }

    @JvmOverloads
    public final void navigate(@g String route, @h NavOptions navOptions, @h Navigator.Extras extras) {
        Intrinsics.checkNotNullParameter(route, "route");
        NavDeepLinkRequest.Builder.Companion companion = NavDeepLinkRequest.Builder.Companion;
        Uri parse = Uri.parse(NavDestination.Companion.createRoute(route));
        Intrinsics.checkExpressionValueIsNotNull(parse, "Uri.parse(this)");
        navigate(companion.fromUri(parse).build(), navOptions, extras);
    }
}
