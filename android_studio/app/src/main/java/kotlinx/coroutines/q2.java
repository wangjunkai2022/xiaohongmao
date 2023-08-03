package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.h4;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import kotlinx.coroutines.internal.x;
import kotlinx.coroutines.j2;

/* compiled from: JobSupport.kt */
@Deprecated(level = DeprecationLevel.ERROR, message = "This is internal API and may be removed in the future releases")
@Metadata(bv = {}, d1 = {"\u0000Ü\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0005²\u0001}Í\u0001B\u0012\u0012\u0007\u0010Ê\u0001\u001a\u00020\u001b¢\u0006\u0006\bË\u0001\u0010Ì\u0001J&\u0010\n\u001a\u00020\t2\u0014\u0010\b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u0082\b¢\u0006\u0004\b\n\u0010\u000bJ#\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0014\u001a\u0004\u0018\u00010\u00122\u0006\u0010\r\u001a\u00020\f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J%\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010\u001e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010#\u001a\u00020\u00072\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0012H\u0002¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u0012H\u0002¢\u0006\u0004\b%\u0010&J\u001d\u0010'\u001a\u00020\u0007*\u00020 2\b\u0010\"\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\b'\u0010$J.\u0010*\u001a\u00020\u0007\"\n\b\u0000\u0010)\u0018\u0001*\u00020(2\u0006\u0010!\u001a\u00020 2\b\u0010\"\u001a\u0004\u0018\u00010\u0012H\u0082\b¢\u0006\u0004\b*\u0010$J\u0019\u0010,\u001a\u00020+2\b\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b,\u0010-J@\u00103\u001a\u00020(2'\u00101\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0012¢\u0006\f\b.\u0012\b\b/\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`02\u0006\u00102\u001a\u00020\u001bH\u0002¢\u0006\u0004\b3\u00104J'\u00107\u001a\u00020\u001b2\u0006\u00105\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 2\u0006\u00106\u001a\u00020(H\u0002¢\u0006\u0004\b7\u00108J\u0017\u0010:\u001a\u00020\u00072\u0006\u0010\r\u001a\u000209H\u0002¢\u0006\u0004\b:\u0010;J\u0017\u0010<\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020(H\u0002¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020\u001bH\u0002¢\u0006\u0004\b>\u0010?J\u0013\u0010@\u001a\u00020\u0007H\u0082@ø\u0001\u0000¢\u0006\u0004\b@\u0010AJ\u001b\u0010B\u001a\u0004\u0018\u00010\u00062\b\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\bB\u0010CJ\u0019\u0010D\u001a\u00020\u00122\b\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\bD\u0010EJ\u001b\u0010F\u001a\u0004\u0018\u00010\u00062\b\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\bF\u0010CJ\u0019\u0010G\u001a\u0004\u0018\u00010 2\u0006\u0010\r\u001a\u00020\u0019H\u0002¢\u0006\u0004\bG\u0010HJ\u001f\u0010I\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0012H\u0002¢\u0006\u0004\bI\u0010JJ%\u0010K\u001a\u0004\u0018\u00010\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\bK\u0010LJ#\u0010M\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\u00192\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\bM\u0010NJ\u0019\u0010P\u001a\u0004\u0018\u00010O2\u0006\u0010\r\u001a\u00020\u0019H\u0002¢\u0006\u0004\bP\u0010QJ*\u0010S\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010R\u001a\u00020O2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0082\u0010¢\u0006\u0004\bS\u0010TJ)\u0010V\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\u0006\u0010U\u001a\u00020O2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\bV\u0010WJ\u0015\u0010Y\u001a\u0004\u0018\u00010O*\u00020XH\u0002¢\u0006\u0004\bY\u0010ZJ\u0019\u0010\\\u001a\u00020[2\b\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\\\u0010]J\u0015\u0010^\u001a\u0004\u0018\u00010\u0006H\u0082@ø\u0001\u0000¢\u0006\u0004\b^\u0010AJ\u0019\u0010`\u001a\u00020\u00072\b\u0010_\u001a\u0004\u0018\u00010\u0001H\u0004¢\u0006\u0004\b`\u0010aJ\r\u0010b\u001a\u00020\u001b¢\u0006\u0004\bb\u0010?J\u000f\u0010c\u001a\u00020\u0007H\u0014¢\u0006\u0004\bc\u0010dJ\u0011\u0010g\u001a\u00060ej\u0002`f¢\u0006\u0004\bg\u0010hJ#\u0010j\u001a\u00060ej\u0002`f*\u00020\u00122\n\b\u0002\u0010i\u001a\u0004\u0018\u00010[H\u0004¢\u0006\u0004\bj\u0010kJ6\u0010m\u001a\u00020l2'\u00101\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0012¢\u0006\f\b.\u0012\b\b/\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`0¢\u0006\u0004\bm\u0010nJF\u0010p\u001a\u00020l2\u0006\u00102\u001a\u00020\u001b2\u0006\u0010o\u001a\u00020\u001b2'\u00101\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0012¢\u0006\f\b.\u0012\b\b/\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`0¢\u0006\u0004\bp\u0010qJ\u0013\u0010r\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0004\br\u0010AJB\u0010v\u001a\u00020\u0007\"\u0004\b\u0000\u001072\f\u0010t\u001a\b\u0012\u0004\u0012\u00028\u00000s2\u001c\u0010\b\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000u\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005ø\u0001\u0000¢\u0006\u0004\bv\u0010wJ\u0017\u0010x\u001a\u00020\u00072\u0006\u00106\u001a\u00020(H\u0000¢\u0006\u0004\bx\u0010=J\u001f\u0010y\u001a\u00020\u00072\u000e\u0010\"\u001a\n\u0018\u00010ej\u0004\u0018\u0001`fH\u0016¢\u0006\u0004\by\u0010zJ\u000f\u0010{\u001a\u00020[H\u0014¢\u0006\u0004\b{\u0010|J\u0019\u0010}\u001a\u00020\u001b2\b\u0010\"\u001a\u0004\u0018\u00010\u0012H\u0017¢\u0006\u0004\b}\u0010&J\u0017\u0010~\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0012H\u0016¢\u0006\u0004\b~\u0010\u007fJ\u0019\u0010\u0081\u0001\u001a\u00020\u00072\u0007\u0010\u0080\u0001\u001a\u00020\u0003¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u0019\u0010\u0083\u0001\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u0012H\u0016¢\u0006\u0005\b\u0083\u0001\u0010&J\u0019\u0010\u0084\u0001\u001a\u00020\u001b2\b\u0010\"\u001a\u0004\u0018\u00010\u0012¢\u0006\u0005\b\u0084\u0001\u0010&J\u001c\u0010\u0085\u0001\u001a\u00020\u001b2\b\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J,\u0010\u0088\u0001\u001a\u00030\u0087\u00012\n\b\u0002\u0010i\u001a\u0004\u0018\u00010[2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0012H\u0080\b¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J\u0015\u0010\u008a\u0001\u001a\u00060ej\u0002`fH\u0016¢\u0006\u0005\b\u008a\u0001\u0010hJ\u001c\u0010\u008b\u0001\u001a\u00020\u001b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0006\b\u008b\u0001\u0010\u0086\u0001J\u001d\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0005\b\u008c\u0001\u0010CJ\u0019\u0010\u008e\u0001\u001a\u00030\u008d\u00012\u0006\u0010R\u001a\u00020\u0002¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001J\u001a\u0010\u0091\u0001\u001a\u00020\u00072\u0007\u0010\u0090\u0001\u001a\u00020\u0012H\u0010¢\u0006\u0005\b\u0091\u0001\u0010\u007fJ\u001b\u0010\u0092\u0001\u001a\u00020\u00072\b\u0010\"\u001a\u0004\u0018\u00010\u0012H\u0014¢\u0006\u0005\b\u0092\u0001\u0010\u007fJ\u001a\u0010\u0093\u0001\u001a\u00020\u001b2\u0007\u0010\u0090\u0001\u001a\u00020\u0012H\u0014¢\u0006\u0005\b\u0093\u0001\u0010&J\u001c\u0010\u0094\u0001\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0006\b\u0094\u0001\u0010\u0095\u0001J\u001a\u0010)\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0005\b)\u0010\u0095\u0001J\u0011\u0010\u0096\u0001\u001a\u00020[H\u0016¢\u0006\u0005\b\u0096\u0001\u0010|J\u0011\u0010\u0097\u0001\u001a\u00020[H\u0007¢\u0006\u0005\b\u0097\u0001\u0010|J\u0011\u0010\u0098\u0001\u001a\u00020[H\u0010¢\u0006\u0005\b\u0098\u0001\u0010|J\u0012\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0012¢\u0006\u0006\b\u0099\u0001\u0010\u009a\u0001J\u0014\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0006\b\u009b\u0001\u0010\u009c\u0001J\u0017\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0006H\u0080@ø\u0001\u0000¢\u0006\u0005\b\u009d\u0001\u0010AJT\u0010\u009f\u0001\u001a\u00020\u0007\"\u0004\b\u0000\u0010)\"\u0004\b\u0001\u001072\f\u0010t\u001a\b\u0012\u0004\u0012\u00028\u00010s2#\u0010\b\u001a\u001f\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010u\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u009e\u0001H\u0000ø\u0001\u0000¢\u0006\u0006\b\u009f\u0001\u0010 \u0001JT\u0010¡\u0001\u001a\u00020\u0007\"\u0004\b\u0000\u0010)\"\u0004\b\u0001\u001072\f\u0010t\u001a\b\u0012\u0004\u0012\u00028\u00010s2#\u0010\b\u001a\u001f\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010u\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u009e\u0001H\u0000ø\u0001\u0000¢\u0006\u0006\b¡\u0001\u0010 \u0001R\u001e\u0010£\u0001\u001a\u0004\u0018\u00010\u0012*\u0004\u0018\u00010\u00068BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b¢\u0001\u0010ER\u001b\u0010¦\u0001\u001a\u00020\u001b*\u00020\u00198BX\u0082\u0004¢\u0006\b\u001a\u0006\b¤\u0001\u0010¥\u0001R\u0019\u0010ª\u0001\u001a\u0007\u0012\u0002\b\u00030§\u00018F¢\u0006\b\u001a\u0006\b¨\u0001\u0010©\u0001R0\u0010°\u0001\u001a\u0005\u0018\u00010\u008d\u00012\n\u0010«\u0001\u001a\u0005\u0018\u00010\u008d\u00018@@@X\u0080\u000e¢\u0006\u0010\u001a\u0006\b¬\u0001\u0010\u00ad\u0001\"\u0006\b®\u0001\u0010¯\u0001R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00068@X\u0080\u0004¢\u0006\b\u001a\u0006\b±\u0001\u0010\u009c\u0001R\u0016\u0010³\u0001\u001a\u00020\u001b8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b²\u0001\u0010?R\u0013\u0010µ\u0001\u001a\u00020\u001b8F¢\u0006\u0007\u001a\u0005\b´\u0001\u0010?R\u0013\u0010¶\u0001\u001a\u00020\u001b8F¢\u0006\u0007\u001a\u0005\b¶\u0001\u0010?R\u0019\u0010¸\u0001\u001a\u0004\u0018\u00010\u00128DX\u0084\u0004¢\u0006\b\u001a\u0006\b·\u0001\u0010\u009a\u0001R\u0016\u0010º\u0001\u001a\u00020\u001b8DX\u0084\u0004¢\u0006\u0007\u001a\u0005\b¹\u0001\u0010?R\u0014\u0010½\u0001\u001a\u00020\u00048F¢\u0006\b\u001a\u0006\b»\u0001\u0010¼\u0001R\u0016\u0010¿\u0001\u001a\u00020\u001b8PX\u0090\u0004¢\u0006\u0007\u001a\u0005\b¾\u0001\u0010?R\u001b\u0010Ã\u0001\u001a\t\u0012\u0004\u0012\u00020\u00010À\u00018F¢\u0006\b\u001a\u0006\bÁ\u0001\u0010Â\u0001R\u0016\u0010Å\u0001\u001a\u00020\u001b8TX\u0094\u0004¢\u0006\u0007\u001a\u0005\bÄ\u0001\u0010?R\u0016\u0010Ç\u0001\u001a\u00020\u001b8PX\u0090\u0004¢\u0006\u0007\u001a\u0005\bÆ\u0001\u0010?R\u0013\u0010É\u0001\u001a\u00020\u001b8F¢\u0006\u0007\u001a\u0005\bÈ\u0001\u0010?\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006Î\u0001"}, d2 = {"Lkotlinx/coroutines/q2;", "Lkotlinx/coroutines/j2;", "Lkotlinx/coroutines/y;", "Lkotlinx/coroutines/a3;", "Lkotlinx/coroutines/selects/c;", "Lkotlin/Function1;", "", "", "block", "", "H0", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;", "Lkotlinx/coroutines/q2$c;", t.b.f83859d, "proposedUpdate", "m0", "(Lkotlinx/coroutines/q2$c;Ljava/lang/Object;)Ljava/lang/Object;", "", "", "exceptions", "t0", "(Lkotlinx/coroutines/q2$c;Ljava/util/List;)Ljava/lang/Throwable;", "rootCause", ExifInterface.LATITUDE_SOUTH, "(Ljava/lang/Throwable;Ljava/util/List;)V", "Lkotlinx/coroutines/c2;", "update", "", "f1", "(Lkotlinx/coroutines/c2;Ljava/lang/Object;)Z", "f0", "(Lkotlinx/coroutines/c2;Ljava/lang/Object;)V", "Lkotlinx/coroutines/v2;", "list", "cause", "O0", "(Lkotlinx/coroutines/v2;Ljava/lang/Throwable;)V", "c0", "(Ljava/lang/Throwable;)Z", "P0", "Lkotlinx/coroutines/p2;", ExifInterface.GPS_DIRECTION_TRUE, "Q0", "", "a1", "(Ljava/lang/Object;)I", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "handler", "onCancelling", "L0", "(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/p2;", "expect", "node", "R", "(Ljava/lang/Object;Lkotlinx/coroutines/v2;Lkotlinx/coroutines/p2;)Z", "Lkotlinx/coroutines/o1;", "U0", "(Lkotlinx/coroutines/o1;)V", "V0", "(Lkotlinx/coroutines/p2;)V", "F0", "()Z", "G0", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "b0", "(Ljava/lang/Object;)Ljava/lang/Object;", "i0", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "I0", "w0", "(Lkotlinx/coroutines/c2;)Lkotlinx/coroutines/v2;", "g1", "(Lkotlinx/coroutines/c2;Ljava/lang/Throwable;)Z", "h1", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "i1", "(Lkotlinx/coroutines/c2;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/x;", "o0", "(Lkotlinx/coroutines/c2;)Lkotlinx/coroutines/x;", "child", "j1", "(Lkotlinx/coroutines/q2$c;Lkotlinx/coroutines/x;Ljava/lang/Object;)Z", "lastChild", "g0", "(Lkotlinx/coroutines/q2$c;Lkotlinx/coroutines/x;Ljava/lang/Object;)V", "Lkotlinx/coroutines/internal/x;", "N0", "(Lkotlinx/coroutines/internal/x;)Lkotlinx/coroutines/x;", "", "b1", "(Ljava/lang/Object;)Ljava/lang/String;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "parent", "B0", "(Lkotlinx/coroutines/j2;)V", com.google.android.exoplayer2.text.ttml.d.f25725o0, "T0", "()V", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "()Ljava/util/concurrent/CancellationException;", "message", "c1", "(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/l1;", "H", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/l1;", "invokeImmediately", y.b.f83920h, "(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/l1;", "X", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/coroutines/Continuation;", "f", "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function1;)V", "X0", "d", "(Ljava/util/concurrent/CancellationException;)V", "d0", "()Ljava/lang/String;", "b", "a0", "(Ljava/lang/Throwable;)V", "parentJob", ExifInterface.LONGITUDE_EAST, "(Lkotlinx/coroutines/a3;)V", "e0", "Y", "Z", "(Ljava/lang/Object;)Z", "Lkotlinx/coroutines/JobCancellationException;", "j0", "(Ljava/lang/String;Ljava/lang/Throwable;)Lkotlinx/coroutines/JobCancellationException;", "M", "J0", "K0", "Lkotlinx/coroutines/w;", "n0", "(Lkotlinx/coroutines/y;)Lkotlinx/coroutines/w;", h4.b.f83287e, "A0", "R0", "z0", "S0", "(Ljava/lang/Object;)V", "toString", "e1", "M0", "s", "()Ljava/lang/Throwable;", "p0", "()Ljava/lang/Object;", "U", "Lkotlin/Function2;", "W0", "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V", "Y0", "s0", "exceptionOrNull", "C0", "(Lkotlinx/coroutines/c2;)Z", "isCancelling", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "key", "value", "x0", "()Lkotlinx/coroutines/w;", "Z0", "(Lkotlinx/coroutines/w;)V", "parentHandle", "y0", "a", "isActive", ContextChain.TAG_INFRA, "isCompleted", "isCancelled", "q0", "completionCause", "r0", "completionCauseHandled", "h0", "()Lkotlinx/coroutines/selects/c;", "onJoin", "v0", "onCancelComplete", "Lkotlin/sequences/Sequence;", "getChildren", "()Lkotlin/sequences/Sequence;", y.b.f83923k, "E0", "isScopedCoroutine", "u0", "handlesException", "D0", "isCompletedExceptionally", "active", "<init>", "(Z)V", "c", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public class q2 implements j2, y, a3, kotlinx.coroutines.selects.c {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f86368a = AtomicReferenceFieldUpdater.newUpdater(q2.class, Object.class, "_state");
    @m8.g
    private volatile /* synthetic */ Object _parentHandle;
    @m8.g
    private volatile /* synthetic */ Object _state;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    @Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0014R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/q2$a;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/r;", "Lkotlinx/coroutines/j2;", "parent", "", y.b.f83920h, "", "K", "Lkotlinx/coroutines/q2;", ContextChain.TAG_INFRA, "Lkotlinx/coroutines/q2;", "job", "Lkotlin/coroutines/Continuation;", "delegate", "<init>", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/q2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a<T> extends r<T> {
        @m8.g

        /* renamed from: i  reason: collision with root package name */
        private final q2 f86369i;

        public a(@m8.g Continuation<? super T> continuation, @m8.g q2 q2Var) {
            super(continuation, 1);
            this.f86369i = q2Var;
        }

        @Override // kotlinx.coroutines.r
        @m8.g
        protected String K() {
            return "AwaitContinuation";
        }

        @Override // kotlinx.coroutines.r
        @m8.g
        public Throwable y(@m8.g j2 j2Var) {
            Throwable e4;
            Object y02 = this.f86369i.y0();
            return (!(y02 instanceof c) || (e4 = ((c) y02).e()) == null) ? y02 instanceof e0 ? ((e0) y02).f85246a : j2Var.A() : e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    @Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0016\u0010\u0017J\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/q2$b;", "Lkotlinx/coroutines/p2;", "", "cause", "", "g0", "Lkotlinx/coroutines/q2;", "e", "Lkotlinx/coroutines/q2;", "parent", "Lkotlinx/coroutines/q2$c;", "f", "Lkotlinx/coroutines/q2$c;", t.b.f83859d, "Lkotlinx/coroutines/x;", "g", "Lkotlinx/coroutines/x;", "child", "", "h", "Ljava/lang/Object;", "proposedUpdate", "<init>", "(Lkotlinx/coroutines/q2;Lkotlinx/coroutines/q2$c;Lkotlinx/coroutines/x;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class b extends p2 {
        @m8.g

        /* renamed from: e  reason: collision with root package name */
        private final q2 f86370e;
        @m8.g

        /* renamed from: f  reason: collision with root package name */
        private final c f86371f;
        @m8.g

        /* renamed from: g  reason: collision with root package name */
        private final x f86372g;
        @m8.h

        /* renamed from: h  reason: collision with root package name */
        private final Object f86373h;

        public b(@m8.g q2 q2Var, @m8.g c cVar, @m8.g x xVar, @m8.h Object obj) {
            this.f86370e = q2Var;
            this.f86371f = cVar;
            this.f86372g = xVar;
            this.f86373h = obj;
        }

        @Override // kotlinx.coroutines.g0
        public void g0(@m8.h Throwable th) {
            this.f86370e.g0(this.f86371f, this.f86372g, this.f86373h);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            g0(th);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JobSupport.kt */
    @Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u0003B!\u0012\u0006\u0010\u0019\u001a\u00020\u0014\u0012\u0006\u0010%\u001a\u00020 \u0012\b\u0010)\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b/\u00100J\u001f\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0005¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0019\u001a\u00020\u00148\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R(\u0010\u001f\u001a\u0004\u0018\u00010\u00012\b\u0010\u001a\u001a\u0004\u0018\u00010\u00018B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR$\u0010%\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020 8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R(\u0010)\u001a\u0004\u0018\u00010\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b&\u0010'\"\u0004\b(\u0010\u0010R\u0011\u0010+\u001a\u00020 8F¢\u0006\u0006\u001a\u0004\b*\u0010\"R\u0011\u0010-\u001a\u00020 8F¢\u0006\u0006\u001a\u0004\b,\u0010\"R\u0014\u0010.\u001a\u00020 8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\"¨\u00061"}, d2 = {"Lkotlinx/coroutines/q2$c;", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "Lkotlinx/coroutines/c2;", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "c", "()Ljava/util/ArrayList;", "proposedException", "", "j", "(Ljava/lang/Throwable;)Ljava/util/List;", h4.b.f83287e, "", "b", "(Ljava/lang/Throwable;)V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/v2;", "a", "Lkotlinx/coroutines/v2;", "f", "()Lkotlinx/coroutines/v2;", "list", "value", "d", "()Ljava/lang/Object;", "l", "(Ljava/lang/Object;)V", "exceptionsHolder", "", "h", "()Z", "k", "(Z)V", "isCompleting", "e", "()Ljava/lang/Throwable;", "m", "rootCause", ContextChain.TAG_INFRA, "isSealed", "g", "isCancelling", "isActive", "<init>", "(Lkotlinx/coroutines/v2;ZLjava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class c implements c2 {
        @m8.g
        private volatile /* synthetic */ Object _exceptionsHolder = null;
        @m8.g
        private volatile /* synthetic */ int _isCompleting;
        @m8.g
        private volatile /* synthetic */ Object _rootCause;
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final v2 f86374a;

        public c(@m8.g v2 v2Var, boolean z9, @m8.h Throwable th) {
            this.f86374a = v2Var;
            this._isCompleting = z9 ? 1 : 0;
            this._rootCause = th;
        }

        private final ArrayList<Throwable> c() {
            return new ArrayList<>(4);
        }

        private final Object d() {
            return this._exceptionsHolder;
        }

        private final void l(Object obj) {
            this._exceptionsHolder = obj;
        }

        @Override // kotlinx.coroutines.c2
        public boolean a() {
            return e() == null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void b(@m8.g Throwable th) {
            Throwable e4 = e();
            if (e4 == null) {
                m(th);
            } else if (th == e4) {
            } else {
                Object d4 = d();
                if (d4 == null) {
                    l(th);
                } else if (!(d4 instanceof Throwable)) {
                    if (!(d4 instanceof ArrayList)) {
                        throw new IllegalStateException(Intrinsics.stringPlus("State is ", d4).toString());
                    }
                    ((ArrayList) d4).add(th);
                } else if (th == d4) {
                } else {
                    ArrayList<Throwable> c10 = c();
                    c10.add(d4);
                    c10.add(th);
                    l(c10);
                }
            }
        }

        @m8.h
        public final Throwable e() {
            return (Throwable) this._rootCause;
        }

        @Override // kotlinx.coroutines.c2
        @m8.g
        public v2 f() {
            return this.f86374a;
        }

        public final boolean g() {
            return e() != null;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [int, boolean] */
        public final boolean h() {
            return this._isCompleting;
        }

        public final boolean i() {
            kotlinx.coroutines.internal.p0 p0Var;
            Object d4 = d();
            p0Var = r2.f86400h;
            return d4 == p0Var;
        }

        @m8.g
        public final List<Throwable> j(@m8.h Throwable th) {
            ArrayList<Throwable> arrayList;
            kotlinx.coroutines.internal.p0 p0Var;
            Object d4 = d();
            if (d4 == null) {
                arrayList = c();
            } else if (d4 instanceof Throwable) {
                ArrayList<Throwable> c10 = c();
                c10.add(d4);
                arrayList = c10;
            } else if (!(d4 instanceof ArrayList)) {
                throw new IllegalStateException(Intrinsics.stringPlus("State is ", d4).toString());
            } else {
                arrayList = (ArrayList) d4;
            }
            Throwable e4 = e();
            if (e4 != null) {
                arrayList.add(0, e4);
            }
            if (th != null && !Intrinsics.areEqual(th, e4)) {
                arrayList.add(th);
            }
            p0Var = r2.f86400h;
            l(p0Var);
            return arrayList;
        }

        public final void k(boolean z9) {
            this._isCompleting = z9 ? 1 : 0;
        }

        public final void m(@m8.h Throwable th) {
            this._rootCause = th;
        }

        @m8.g
        public String toString() {
            return "Finishing[cancelling=" + g() + ", completing=" + h() + ", rootCause=" + e() + ", exceptions=" + d() + ", list=" + f() + ']';
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/internal/x$f", "Lkotlinx/coroutines/internal/x$c;", "Lkotlinx/coroutines/internal/x;", "Lkotlinx/coroutines/internal/Node;", "affected", "", "k", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class d extends x.c {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.internal.x f86375d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ q2 f86376e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Object f86377f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(kotlinx.coroutines.internal.x xVar, q2 q2Var, Object obj) {
            super(xVar);
            this.f86375d = xVar;
            this.f86376e = q2Var;
            this.f86377f = obj;
        }

        @Override // kotlinx.coroutines.internal.d
        @m8.h
        /* renamed from: k */
        public Object i(@m8.g kotlinx.coroutines.internal.x xVar) {
            if (this.f86376e.y0() == this.f86377f) {
                return null;
            }
            return kotlinx.coroutines.internal.w.a();
        }
    }

    /* compiled from: JobSupport.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlin/sequences/SequenceScope;", "Lkotlinx/coroutines/j2;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", i = {1, 1, 1}, l = {952, 954}, m = "invokeSuspend", n = {"$this$sequence", "this_$iv", "cur$iv"}, s = {"L$0", "L$1", "L$2"})
    /* loaded from: classes4.dex */
    static final class e extends RestrictedSuspendLambda implements Function2<SequenceScope<? super j2>, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f86378a;

        /* renamed from: b  reason: collision with root package name */
        Object f86379b;

        /* renamed from: c  reason: collision with root package name */
        int f86380c;

        /* renamed from: d  reason: collision with root package name */
        private /* synthetic */ Object f86381d;

        e(Continuation<? super e> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            e eVar = new e(continuation);
            eVar.f86381d = obj;
            return eVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g SequenceScope<? super j2> sequenceScope, @m8.h Continuation<? super Unit> continuation) {
            return ((e) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0067  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0069 -> B:28:0x007f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x007c -> B:28:0x007f). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.f86380c
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L2b
                if (r1 == r3) goto L27
                if (r1 != r2) goto L1f
                java.lang.Object r1 = r7.f86379b
                kotlinx.coroutines.internal.x r1 = (kotlinx.coroutines.internal.x) r1
                java.lang.Object r3 = r7.f86378a
                kotlinx.coroutines.internal.v r3 = (kotlinx.coroutines.internal.v) r3
                java.lang.Object r4 = r7.f86381d
                kotlin.sequences.SequenceScope r4 = (kotlin.sequences.SequenceScope) r4
                kotlin.ResultKt.throwOnFailure(r8)
                r8 = r7
                goto L7f
            L1f:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L27:
                kotlin.ResultKt.throwOnFailure(r8)
                goto L84
            L2b:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.Object r8 = r7.f86381d
                kotlin.sequences.SequenceScope r8 = (kotlin.sequences.SequenceScope) r8
                kotlinx.coroutines.q2 r1 = kotlinx.coroutines.q2.this
                java.lang.Object r1 = r1.y0()
                boolean r4 = r1 instanceof kotlinx.coroutines.x
                if (r4 == 0) goto L49
                kotlinx.coroutines.x r1 = (kotlinx.coroutines.x) r1
                kotlinx.coroutines.y r1 = r1.f86859e
                r7.f86380c = r3
                java.lang.Object r8 = r8.yield(r1, r7)
                if (r8 != r0) goto L84
                return r0
            L49:
                boolean r3 = r1 instanceof kotlinx.coroutines.c2
                if (r3 == 0) goto L84
                kotlinx.coroutines.c2 r1 = (kotlinx.coroutines.c2) r1
                kotlinx.coroutines.v2 r1 = r1.f()
                if (r1 != 0) goto L56
                goto L84
            L56:
                java.lang.Object r3 = r1.R()
                kotlinx.coroutines.internal.x r3 = (kotlinx.coroutines.internal.x) r3
                r4 = r8
                r8 = r7
                r6 = r3
                r3 = r1
                r1 = r6
            L61:
                boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
                if (r5 != 0) goto L84
                boolean r5 = r1 instanceof kotlinx.coroutines.x
                if (r5 == 0) goto L7f
                r5 = r1
                kotlinx.coroutines.x r5 = (kotlinx.coroutines.x) r5
                kotlinx.coroutines.y r5 = r5.f86859e
                r8.f86381d = r4
                r8.f86378a = r3
                r8.f86379b = r1
                r8.f86380c = r2
                java.lang.Object r5 = r4.yield(r5, r8)
                if (r5 != r0) goto L7f
                return r0
            L7f:
                kotlinx.coroutines.internal.x r1 = r1.S()
                goto L61
            L84:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.q2.e.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public q2(boolean z9) {
        this._state = z9 ? r2.f86402j : r2.f86401i;
        this._parentHandle = null;
    }

    private final boolean C0(c2 c2Var) {
        return (c2Var instanceof c) && ((c) c2Var).g();
    }

    private final boolean F0() {
        Object y02;
        do {
            y02 = y0();
            if (!(y02 instanceof c2)) {
                return false;
            }
        } while (a1(y02) < 0);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object G0(Continuation<? super Unit> continuation) {
        r rVar = new r(IntrinsicsKt.intercepted(continuation), 1);
        rVar.C();
        t.a(rVar, H(new d3(rVar)));
        Object A = rVar.A();
        if (A == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? A : Unit.INSTANCE;
    }

    private final Void H0(Function1<Object, Unit> function1) {
        while (true) {
            function1.invoke(y0());
        }
    }

    private final Object I0(Object obj) {
        kotlinx.coroutines.internal.p0 p0Var;
        kotlinx.coroutines.internal.p0 p0Var2;
        kotlinx.coroutines.internal.p0 p0Var3;
        kotlinx.coroutines.internal.p0 p0Var4;
        kotlinx.coroutines.internal.p0 p0Var5;
        kotlinx.coroutines.internal.p0 p0Var6;
        Throwable th = null;
        while (true) {
            Object y02 = y0();
            if (y02 instanceof c) {
                synchronized (y02) {
                    if (((c) y02).i()) {
                        p0Var2 = r2.f86396d;
                        return p0Var2;
                    }
                    boolean g4 = ((c) y02).g();
                    if (obj != null || !g4) {
                        if (th == null) {
                            th = i0(obj);
                        }
                        ((c) y02).b(th);
                    }
                    Throwable e4 = g4 ^ true ? ((c) y02).e() : null;
                    if (e4 != null) {
                        O0(((c) y02).f(), e4);
                    }
                    p0Var = r2.f86393a;
                    return p0Var;
                }
            } else if (y02 instanceof c2) {
                if (th == null) {
                    th = i0(obj);
                }
                c2 c2Var = (c2) y02;
                if (c2Var.a()) {
                    if (g1(c2Var, th)) {
                        p0Var4 = r2.f86393a;
                        return p0Var4;
                    }
                } else {
                    Object h12 = h1(y02, new e0(th, false, 2, null));
                    p0Var5 = r2.f86393a;
                    if (h12 != p0Var5) {
                        p0Var6 = r2.f86395c;
                        if (h12 != p0Var6) {
                            return h12;
                        }
                    } else {
                        throw new IllegalStateException(Intrinsics.stringPlus("Cannot happen in ", y02).toString());
                    }
                }
            } else {
                p0Var3 = r2.f86396d;
                return p0Var3;
            }
        }
    }

    private final p2 L0(Function1<? super Throwable, Unit> function1, boolean z9) {
        p2 p2Var;
        if (z9) {
            p2Var = function1 instanceof k2 ? (k2) function1 : null;
            if (p2Var == null) {
                p2Var = new h2(function1);
            }
        } else {
            p2 p2Var2 = function1 instanceof p2 ? (p2) function1 : null;
            p2Var = p2Var2 != null ? p2Var2 : null;
            if (p2Var == null) {
                p2Var = new i2(function1);
            }
        }
        p2Var.i0(this);
        return p2Var;
    }

    private final x N0(kotlinx.coroutines.internal.x xVar) {
        while (xVar.W()) {
            xVar = xVar.T();
        }
        while (true) {
            xVar = xVar.S();
            if (!xVar.W()) {
                if (xVar instanceof x) {
                    return (x) xVar;
                }
                if (xVar instanceof v2) {
                    return null;
                }
            }
        }
    }

    private final void O0(v2 v2Var, Throwable th) {
        CompletionHandlerException completionHandlerException;
        R0(th);
        CompletionHandlerException completionHandlerException2 = null;
        for (kotlinx.coroutines.internal.x xVar = (kotlinx.coroutines.internal.x) v2Var.R(); !Intrinsics.areEqual(xVar, v2Var); xVar = xVar.S()) {
            if (xVar instanceof k2) {
                p2 p2Var = (p2) xVar;
                try {
                    p2Var.g0(th);
                } catch (Throwable th2) {
                    if (completionHandlerException2 == null) {
                        completionHandlerException = null;
                    } else {
                        ExceptionsKt__ExceptionsKt.addSuppressed(completionHandlerException2, th2);
                        completionHandlerException = completionHandlerException2;
                    }
                    if (completionHandlerException == null) {
                        completionHandlerException2 = new CompletionHandlerException("Exception in completion handler " + p2Var + " for " + this, th2);
                    }
                }
            }
        }
        if (completionHandlerException2 != null) {
            A0(completionHandlerException2);
        }
        c0(th);
    }

    private final void P0(v2 v2Var, Throwable th) {
        CompletionHandlerException completionHandlerException;
        CompletionHandlerException completionHandlerException2 = null;
        for (kotlinx.coroutines.internal.x xVar = (kotlinx.coroutines.internal.x) v2Var.R(); !Intrinsics.areEqual(xVar, v2Var); xVar = xVar.S()) {
            if (xVar instanceof p2) {
                p2 p2Var = (p2) xVar;
                try {
                    p2Var.g0(th);
                } catch (Throwable th2) {
                    if (completionHandlerException2 == null) {
                        completionHandlerException = null;
                    } else {
                        ExceptionsKt__ExceptionsKt.addSuppressed(completionHandlerException2, th2);
                        completionHandlerException = completionHandlerException2;
                    }
                    if (completionHandlerException == null) {
                        completionHandlerException2 = new CompletionHandlerException("Exception in completion handler " + p2Var + " for " + this, th2);
                    }
                }
            }
        }
        if (completionHandlerException2 == null) {
            return;
        }
        A0(completionHandlerException2);
    }

    private final /* synthetic */ <T extends p2> void Q0(v2 v2Var, Throwable th) {
        CompletionHandlerException completionHandlerException;
        CompletionHandlerException completionHandlerException2 = null;
        for (kotlinx.coroutines.internal.x xVar = (kotlinx.coroutines.internal.x) v2Var.R(); !Intrinsics.areEqual(xVar, v2Var); xVar = xVar.S()) {
            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
            if (xVar instanceof kotlinx.coroutines.internal.x) {
                p2 p2Var = (p2) xVar;
                try {
                    p2Var.g0(th);
                } catch (Throwable th2) {
                    if (completionHandlerException2 == null) {
                        completionHandlerException = null;
                    } else {
                        ExceptionsKt__ExceptionsKt.addSuppressed(completionHandlerException2, th2);
                        completionHandlerException = completionHandlerException2;
                    }
                    if (completionHandlerException == null) {
                        completionHandlerException2 = new CompletionHandlerException("Exception in completion handler " + p2Var + " for " + this, th2);
                    }
                }
            }
        }
        if (completionHandlerException2 == null) {
            return;
        }
        A0(completionHandlerException2);
    }

    private final boolean R(Object obj, v2 v2Var, p2 p2Var) {
        int e02;
        d dVar = new d(p2Var, this, obj);
        do {
            e02 = v2Var.T().e0(p2Var, v2Var, dVar);
            if (e02 == 1) {
                return true;
            }
        } while (e02 != 2);
        return false;
    }

    private final void S(Throwable th, List<? extends Throwable> list) {
        if (list.size() <= 1) {
            return;
        }
        Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        for (Throwable th2 : list) {
            if (th2 != th && th2 != th && !(th2 instanceof CancellationException) && newSetFromMap.add(th2)) {
                ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.coroutines.b2] */
    private final void U0(o1 o1Var) {
        v2 v2Var = new v2();
        if (!o1Var.a()) {
            v2Var = new b2(v2Var);
        }
        androidx.concurrent.futures.a.a(f86368a, this, o1Var, v2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object V(Continuation<Object> continuation) {
        a aVar = new a(IntrinsicsKt.intercepted(continuation), this);
        aVar.C();
        t.a(aVar, H(new c3(aVar)));
        Object A = aVar.A();
        if (A == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    private final void V0(p2 p2Var) {
        p2Var.L(new v2());
        androidx.concurrent.futures.a.a(f86368a, this, p2Var, p2Var.S());
    }

    private final int a1(Object obj) {
        o1 o1Var;
        if (obj instanceof o1) {
            if (((o1) obj).a()) {
                return 0;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f86368a;
            o1Var = r2.f86402j;
            if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, o1Var)) {
                T0();
                return 1;
            }
            return -1;
        } else if (obj instanceof b2) {
            if (androidx.concurrent.futures.a.a(f86368a, this, obj, ((b2) obj).f())) {
                T0();
                return 1;
            }
            return -1;
        } else {
            return 0;
        }
    }

    private final Object b0(Object obj) {
        kotlinx.coroutines.internal.p0 p0Var;
        Object h12;
        kotlinx.coroutines.internal.p0 p0Var2;
        do {
            Object y02 = y0();
            if ((y02 instanceof c2) && (!(y02 instanceof c) || !((c) y02).h())) {
                h12 = h1(y02, new e0(i0(obj), false, 2, null));
                p0Var2 = r2.f86395c;
            } else {
                p0Var = r2.f86393a;
                return p0Var;
            }
        } while (h12 == p0Var2);
        return h12;
    }

    private final String b1(Object obj) {
        if (!(obj instanceof c)) {
            return obj instanceof c2 ? ((c2) obj).a() ? "Active" : "New" : obj instanceof e0 ? "Cancelled" : "Completed";
        }
        c cVar = (c) obj;
        return cVar.g() ? "Cancelling" : cVar.h() ? "Completing" : "Active";
    }

    private final boolean c0(Throwable th) {
        if (E0()) {
            return true;
        }
        boolean z9 = th instanceof CancellationException;
        w x02 = x0();
        return (x02 == null || x02 == x2.f86862a) ? z9 : x02.e(th) || z9;
    }

    public static /* synthetic */ CancellationException d1(q2 q2Var, Throwable th, String str, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 1) != 0) {
                str = null;
            }
            return q2Var.c1(th, str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
    }

    private final void f0(c2 c2Var, Object obj) {
        w x02 = x0();
        if (x02 != null) {
            x02.dispose();
            Z0(x2.f86862a);
        }
        e0 e0Var = obj instanceof e0 ? (e0) obj : null;
        Throwable th = e0Var != null ? e0Var.f85246a : null;
        if (c2Var instanceof p2) {
            try {
                ((p2) c2Var).g0(th);
                return;
            } catch (Throwable th2) {
                A0(new CompletionHandlerException("Exception in completion handler " + c2Var + " for " + this, th2));
                return;
            }
        }
        v2 f10 = c2Var.f();
        if (f10 == null) {
            return;
        }
        P0(f10, th);
    }

    private final boolean f1(c2 c2Var, Object obj) {
        if (androidx.concurrent.futures.a.a(f86368a, this, c2Var, r2.g(obj))) {
            R0(null);
            S0(obj);
            f0(c2Var, obj);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g0(c cVar, x xVar, Object obj) {
        x N0 = N0(xVar);
        if (N0 == null || !j1(cVar, N0, obj)) {
            T(m0(cVar, obj));
        }
    }

    private final boolean g1(c2 c2Var, Throwable th) {
        v2 w02 = w0(c2Var);
        if (w02 == null) {
            return false;
        }
        if (androidx.concurrent.futures.a.a(f86368a, this, c2Var, new c(w02, false, th))) {
            O0(w02, th);
            return true;
        }
        return false;
    }

    private final Object h1(Object obj, Object obj2) {
        kotlinx.coroutines.internal.p0 p0Var;
        kotlinx.coroutines.internal.p0 p0Var2;
        if (!(obj instanceof c2)) {
            p0Var2 = r2.f86393a;
            return p0Var2;
        } else if (((obj instanceof o1) || (obj instanceof p2)) && !(obj instanceof x) && !(obj2 instanceof e0)) {
            if (f1((c2) obj, obj2)) {
                return obj2;
            }
            p0Var = r2.f86395c;
            return p0Var;
        } else {
            return i1((c2) obj, obj2);
        }
    }

    private final Throwable i0(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new JobCancellationException(d0(), null, this) : th;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((a3) obj).M();
    }

    private final Object i1(c2 c2Var, Object obj) {
        kotlinx.coroutines.internal.p0 p0Var;
        kotlinx.coroutines.internal.p0 p0Var2;
        kotlinx.coroutines.internal.p0 p0Var3;
        v2 w02 = w0(c2Var);
        if (w02 == null) {
            p0Var3 = r2.f86395c;
            return p0Var3;
        }
        c cVar = c2Var instanceof c ? (c) c2Var : null;
        if (cVar == null) {
            cVar = new c(w02, false, null);
        }
        synchronized (cVar) {
            if (cVar.h()) {
                p0Var2 = r2.f86393a;
                return p0Var2;
            }
            cVar.k(true);
            if (cVar != c2Var && !androidx.concurrent.futures.a.a(f86368a, this, c2Var, cVar)) {
                p0Var = r2.f86395c;
                return p0Var;
            }
            boolean g4 = cVar.g();
            e0 e0Var = obj instanceof e0 ? (e0) obj : null;
            if (e0Var != null) {
                cVar.b(e0Var.f85246a);
            }
            Throwable e4 = true ^ g4 ? cVar.e() : null;
            Unit unit = Unit.INSTANCE;
            if (e4 != null) {
                O0(w02, e4);
            }
            x o02 = o0(c2Var);
            if (o02 != null && j1(cVar, o02, obj)) {
                return r2.f86394b;
            }
            return m0(cVar, obj);
        }
    }

    private final boolean j1(c cVar, x xVar, Object obj) {
        while (j2.a.f(xVar.f86859e, false, false, new b(this, cVar, xVar, obj), 1, null) == x2.f86862a) {
            xVar = N0(xVar);
            if (xVar == null) {
                return false;
            }
        }
        return true;
    }

    public static /* synthetic */ JobCancellationException k0(q2 q2Var, String str, Throwable th, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 1) != 0) {
                str = null;
            }
            if ((i4 & 2) != 0) {
                th = null;
            }
            if (str == null) {
                str = q2Var.d0();
            }
            return new JobCancellationException(str, th, q2Var);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: defaultCancellationException");
    }

    private final Object m0(c cVar, Object obj) {
        boolean g4;
        Throwable t02;
        e0 e0Var = obj instanceof e0 ? (e0) obj : null;
        Throwable th = e0Var == null ? null : e0Var.f85246a;
        synchronized (cVar) {
            g4 = cVar.g();
            List<Throwable> j4 = cVar.j(th);
            t02 = t0(cVar, j4);
            if (t02 != null) {
                S(t02, j4);
            }
        }
        boolean z9 = false;
        if (t02 != null && t02 != th) {
            obj = new e0(t02, false, 2, null);
        }
        if (t02 != null) {
            if ((c0(t02) || z0(t02)) ? true : true) {
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                ((e0) obj).b();
            }
        }
        if (!g4) {
            R0(t02);
        }
        S0(obj);
        androidx.concurrent.futures.a.a(f86368a, this, cVar, r2.g(obj));
        f0(cVar, obj);
        return obj;
    }

    private final x o0(c2 c2Var) {
        x xVar = c2Var instanceof x ? (x) c2Var : null;
        if (xVar == null) {
            v2 f10 = c2Var.f();
            if (f10 == null) {
                return null;
            }
            return N0(f10);
        }
        return xVar;
    }

    private final Throwable s0(Object obj) {
        e0 e0Var = obj instanceof e0 ? (e0) obj : null;
        if (e0Var == null) {
            return null;
        }
        return e0Var.f85246a;
    }

    private final Throwable t0(c cVar, List<? extends Throwable> list) {
        Object obj;
        boolean z9;
        Object obj2 = null;
        if (list.isEmpty()) {
            if (cVar.g()) {
                return new JobCancellationException(d0(), null, this);
            }
            return null;
        }
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (!(((Throwable) obj) instanceof CancellationException)) {
                break;
            }
        }
        Throwable th = (Throwable) obj;
        if (th != null) {
            return th;
        }
        Throwable th2 = list.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            Iterator<T> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                Throwable th3 = (Throwable) next;
                if (th3 == th2 || !(th3 instanceof TimeoutCancellationException)) {
                    z9 = false;
                    continue;
                } else {
                    z9 = true;
                    continue;
                }
                if (z9) {
                    obj2 = next;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj2;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    private final v2 w0(c2 c2Var) {
        v2 f10 = c2Var.f();
        if (f10 == null) {
            if (c2Var instanceof o1) {
                return new v2();
            }
            if (c2Var instanceof p2) {
                V0((p2) c2Var);
                return null;
            }
            throw new IllegalStateException(Intrinsics.stringPlus("State should have list: ", c2Var).toString());
        }
        return f10;
    }

    @Override // kotlinx.coroutines.j2
    @m8.g
    public final CancellationException A() {
        Object y02 = y0();
        if (!(y02 instanceof c)) {
            if (y02 instanceof c2) {
                throw new IllegalStateException(Intrinsics.stringPlus("Job is still new or active: ", this).toString());
            }
            return y02 instanceof e0 ? d1(this, ((e0) y02).f85246a, null, 1, null) : new JobCancellationException(Intrinsics.stringPlus(v0.a(this), " has completed normally"), null, this);
        }
        Throwable e4 = ((c) y02).e();
        CancellationException c12 = e4 != null ? c1(e4, Intrinsics.stringPlus(v0.a(this), " is cancelling")) : null;
        if (c12 != null) {
            return c12;
        }
        throw new IllegalStateException(Intrinsics.stringPlus("Job is still new or active: ", this).toString());
    }

    public void A0(@m8.g Throwable th) {
        throw th;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void B0(@m8.h j2 j2Var) {
        if (j2Var == null) {
            Z0(x2.f86862a);
            return;
        }
        j2Var.start();
        w n02 = j2Var.n0(this);
        Z0(n02);
        if (i()) {
            n02.dispose();
            Z0(x2.f86862a);
        }
    }

    public final boolean D0() {
        return y0() instanceof e0;
    }

    @Override // kotlinx.coroutines.y
    public final void E(@m8.g a3 a3Var) {
        Z(a3Var);
    }

    protected boolean E0() {
        return false;
    }

    @Override // kotlinx.coroutines.j2
    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    @m8.g
    public j2 G(@m8.g j2 j2Var) {
        return j2.a.i(this, j2Var);
    }

    @Override // kotlinx.coroutines.j2
    @m8.g
    public final l1 H(@m8.g Function1<? super Throwable, Unit> function1) {
        return y(false, true, function1);
    }

    public final boolean J0(@m8.h Object obj) {
        Object h12;
        kotlinx.coroutines.internal.p0 p0Var;
        kotlinx.coroutines.internal.p0 p0Var2;
        do {
            h12 = h1(y0(), obj);
            p0Var = r2.f86393a;
            if (h12 == p0Var) {
                return false;
            }
            if (h12 == r2.f86394b) {
                return true;
            }
            p0Var2 = r2.f86395c;
        } while (h12 == p0Var2);
        T(h12);
        return true;
    }

    @m8.h
    public final Object K0(@m8.h Object obj) {
        Object h12;
        kotlinx.coroutines.internal.p0 p0Var;
        kotlinx.coroutines.internal.p0 p0Var2;
        do {
            h12 = h1(y0(), obj);
            p0Var = r2.f86393a;
            if (h12 != p0Var) {
                p0Var2 = r2.f86395c;
            } else {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, s0(obj));
            }
        } while (h12 == p0Var2);
        return h12;
    }

    @Override // kotlinx.coroutines.a3
    @m8.g
    public CancellationException M() {
        Throwable th;
        Object y02 = y0();
        if (y02 instanceof c) {
            th = ((c) y02).e();
        } else if (y02 instanceof e0) {
            th = ((e0) y02).f85246a;
        } else if (y02 instanceof c2) {
            throw new IllegalStateException(Intrinsics.stringPlus("Cannot be cancelling child in this state: ", y02).toString());
        } else {
            th = null;
        }
        CancellationException cancellationException = th instanceof CancellationException ? th : null;
        return cancellationException == null ? new JobCancellationException(Intrinsics.stringPlus("Parent job is ", b1(y02)), th, this) : cancellationException;
    }

    @m8.g
    public String M0() {
        return v0.a(this);
    }

    protected void R0(@m8.h Throwable th) {
    }

    protected void S0(@m8.h Object obj) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void T(@m8.h Object obj) {
    }

    protected void T0() {
    }

    @m8.h
    public final Object U(@m8.g Continuation<Object> continuation) {
        Object y02;
        do {
            y02 = y0();
            if (!(y02 instanceof c2)) {
                if (!(y02 instanceof e0)) {
                    return r2.o(y02);
                }
                throw ((e0) y02).f85246a;
            }
        } while (a1(y02) < 0);
        return V(continuation);
    }

    public final <T, R> void W0(@m8.g kotlinx.coroutines.selects.f<? super R> fVar, @m8.g Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        Object y02;
        do {
            y02 = y0();
            if (fVar.h()) {
                return;
            }
            if (!(y02 instanceof c2)) {
                if (fVar.t()) {
                    if (y02 instanceof e0) {
                        fVar.v(((e0) y02).f85246a);
                        return;
                    } else {
                        z7.b.d(function2, r2.o(y02), fVar.u());
                        return;
                    }
                }
                return;
            }
        } while (a1(y02) != 0);
        fVar.p(H(new h3(fVar, function2)));
    }

    @Override // kotlinx.coroutines.j2
    @m8.h
    public final Object X(@m8.g Continuation<? super Unit> continuation) {
        if (!F0()) {
            m2.z(continuation.getContext());
            return Unit.INSTANCE;
        }
        Object G0 = G0(continuation);
        return G0 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? G0 : Unit.INSTANCE;
    }

    public final void X0(@m8.g p2 p2Var) {
        Object y02;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        o1 o1Var;
        do {
            y02 = y0();
            if (!(y02 instanceof p2)) {
                if (!(y02 instanceof c2) || ((c2) y02).f() == null) {
                    return;
                }
                p2Var.Z();
                return;
            } else if (y02 != p2Var) {
                return;
            } else {
                atomicReferenceFieldUpdater = f86368a;
                o1Var = r2.f86402j;
            }
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, y02, o1Var));
    }

    public final boolean Y(@m8.h Throwable th) {
        return Z(th);
    }

    public final <T, R> void Y0(@m8.g kotlinx.coroutines.selects.f<? super R> fVar, @m8.g Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        Object y02 = y0();
        if (y02 instanceof e0) {
            fVar.v(((e0) y02).f85246a);
        } else {
            z7.a.f(function2, r2.o(y02), fVar.u(), null, 4, null);
        }
    }

    public final boolean Z(@m8.h Object obj) {
        Object obj2;
        kotlinx.coroutines.internal.p0 p0Var;
        kotlinx.coroutines.internal.p0 p0Var2;
        kotlinx.coroutines.internal.p0 p0Var3;
        obj2 = r2.f86393a;
        if (v0() && (obj2 = b0(obj)) == r2.f86394b) {
            return true;
        }
        p0Var = r2.f86393a;
        if (obj2 == p0Var) {
            obj2 = I0(obj);
        }
        p0Var2 = r2.f86393a;
        if (obj2 == p0Var2 || obj2 == r2.f86394b) {
            return true;
        }
        p0Var3 = r2.f86396d;
        if (obj2 == p0Var3) {
            return false;
        }
        T(obj2);
        return true;
    }

    public final void Z0(@m8.h w wVar) {
        this._parentHandle = wVar;
    }

    @Override // kotlinx.coroutines.j2
    public boolean a() {
        Object y02 = y0();
        return (y02 instanceof c2) && ((c2) y02).a();
    }

    public void a0(@m8.g Throwable th) {
        Z(th);
    }

    @Override // kotlinx.coroutines.j2, kotlinx.coroutines.channels.i
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Added since 1.2.0 for binary compatibility with versions <= 1.1.x")
    public /* synthetic */ boolean b(Throwable th) {
        CancellationException d12 = th == null ? null : d1(this, th, null, 1, null);
        if (d12 == null) {
            d12 = new JobCancellationException(d0(), null, this);
        }
        a0(d12);
        return true;
    }

    @m8.g
    protected final CancellationException c1(@m8.g Throwable th, @m8.h String str) {
        CancellationException cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        if (cancellationException == null) {
            if (str == null) {
                str = d0();
            }
            cancellationException = new JobCancellationException(str, th, this);
        }
        return cancellationException;
    }

    @Override // kotlinx.coroutines.j2, kotlinx.coroutines.channels.f0
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public /* synthetic */ void cancel() {
        j2.a.a(this);
    }

    @Override // kotlinx.coroutines.j2, kotlinx.coroutines.channels.i
    public void d(@m8.h CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(d0(), null, this);
        }
        a0(cancellationException);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public String d0() {
        return "Job was cancelled";
    }

    public boolean e0(@m8.g Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return Z(th) && u0();
    }

    @m8.g
    @e2
    public final String e1() {
        return M0() + '{' + b1(y0()) + '}';
    }

    @Override // kotlinx.coroutines.selects.c
    public final <R> void f(@m8.g kotlinx.coroutines.selects.f<? super R> fVar, @m8.g Function1<? super Continuation<? super R>, ? extends Object> function1) {
        Object y02;
        do {
            y02 = y0();
            if (fVar.h()) {
                return;
            }
            if (!(y02 instanceof c2)) {
                if (fVar.t()) {
                    z7.b.c(function1, fVar.u());
                    return;
                }
                return;
            }
        } while (a1(y02) != 0);
        fVar.p(H(new i3(fVar, function1)));
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r9, @m8.g Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) j2.a.d(this, r9, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @m8.h
    public <E extends CoroutineContext.Element> E get(@m8.g CoroutineContext.Key<E> key) {
        return (E) j2.a.e(this, key);
    }

    @Override // kotlinx.coroutines.j2
    @m8.g
    public final Sequence<j2> getChildren() {
        Sequence<j2> sequence;
        sequence = SequencesKt__SequenceBuilderKt.sequence(new e(null));
        return sequence;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @m8.g
    public final CoroutineContext.Key<?> getKey() {
        return j2.f86331k2;
    }

    @Override // kotlinx.coroutines.j2
    @m8.g
    public final kotlinx.coroutines.selects.c h0() {
        return this;
    }

    @Override // kotlinx.coroutines.j2
    public final boolean i() {
        return !(y0() instanceof c2);
    }

    @Override // kotlinx.coroutines.j2
    public final boolean isCancelled() {
        Object y02 = y0();
        return (y02 instanceof e0) || ((y02 instanceof c) && ((c) y02).g());
    }

    @m8.g
    public final JobCancellationException j0(@m8.h String str, @m8.h Throwable th) {
        if (str == null) {
            str = d0();
        }
        return new JobCancellationException(str, th, this);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @m8.g
    public CoroutineContext minusKey(@m8.g CoroutineContext.Key<?> key) {
        return j2.a.g(this, key);
    }

    @Override // kotlinx.coroutines.j2
    @m8.g
    public final w n0(@m8.g y yVar) {
        return (w) j2.a.f(this, true, false, new x(yVar), 2, null);
    }

    @m8.h
    public final Object p0() {
        Object y02 = y0();
        if (!(y02 instanceof c2)) {
            if (!(y02 instanceof e0)) {
                return r2.o(y02);
            }
            throw ((e0) y02).f85246a;
        }
        throw new IllegalStateException("This job has not completed yet".toString());
    }

    @Override // kotlin.coroutines.CoroutineContext
    @m8.g
    public CoroutineContext plus(@m8.g CoroutineContext coroutineContext) {
        return j2.a.h(this, coroutineContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.h
    public final Throwable q0() {
        Object y02 = y0();
        if (y02 instanceof c) {
            Throwable e4 = ((c) y02).e();
            if (e4 != null) {
                return e4;
            }
            throw new IllegalStateException(Intrinsics.stringPlus("Job is still new or active: ", this).toString());
        } else if (!(y02 instanceof c2)) {
            if (y02 instanceof e0) {
                return ((e0) y02).f85246a;
            }
            return null;
        } else {
            throw new IllegalStateException(Intrinsics.stringPlus("Job is still new or active: ", this).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean r0() {
        Object y02 = y0();
        return (y02 instanceof e0) && ((e0) y02).a();
    }

    @m8.h
    public final Throwable s() {
        Object y02 = y0();
        if (!(y02 instanceof c2)) {
            return s0(y02);
        }
        throw new IllegalStateException("This job has not completed yet".toString());
    }

    @Override // kotlinx.coroutines.j2
    public final boolean start() {
        int a12;
        do {
            a12 = a1(y0());
            if (a12 == 0) {
                return false;
            }
        } while (a12 != 1);
        return true;
    }

    @m8.g
    public String toString() {
        return e1() + '@' + v0.b(this);
    }

    public boolean u0() {
        return true;
    }

    public boolean v0() {
        return false;
    }

    @m8.h
    public final w x0() {
        return (w) this._parentHandle;
    }

    @Override // kotlinx.coroutines.j2
    @m8.g
    public final l1 y(boolean z9, boolean z10, @m8.g Function1<? super Throwable, Unit> function1) {
        p2 L0 = L0(function1, z9);
        while (true) {
            Object y02 = y0();
            if (y02 instanceof o1) {
                o1 o1Var = (o1) y02;
                if (o1Var.a()) {
                    if (androidx.concurrent.futures.a.a(f86368a, this, y02, L0)) {
                        return L0;
                    }
                } else {
                    U0(o1Var);
                }
            } else {
                if (y02 instanceof c2) {
                    v2 f10 = ((c2) y02).f();
                    if (f10 == null) {
                        Objects.requireNonNull(y02, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                        V0((p2) y02);
                    } else {
                        l1 l1Var = x2.f86862a;
                        if (z9 && (y02 instanceof c)) {
                            synchronized (y02) {
                                r3 = ((c) y02).e();
                                if (r3 == null || ((function1 instanceof x) && !((c) y02).h())) {
                                    if (R(y02, f10, L0)) {
                                        if (r3 == null) {
                                            return L0;
                                        }
                                        l1Var = L0;
                                    }
                                }
                                Unit unit = Unit.INSTANCE;
                            }
                        }
                        if (r3 != null) {
                            if (z10) {
                                function1.invoke(r3);
                            }
                            return l1Var;
                        } else if (R(y02, f10, L0)) {
                            return L0;
                        }
                    }
                } else {
                    if (z10) {
                        e0 e0Var = y02 instanceof e0 ? (e0) y02 : null;
                        function1.invoke(e0Var != null ? e0Var.f85246a : null);
                    }
                    return x2.f86862a;
                }
            }
        }
    }

    @m8.h
    public final Object y0() {
        while (true) {
            Object obj = this._state;
            if (!(obj instanceof kotlinx.coroutines.internal.h0)) {
                return obj;
            }
            ((kotlinx.coroutines.internal.h0) obj).c(this);
        }
    }

    protected boolean z0(@m8.g Throwable th) {
        return false;
    }
}
