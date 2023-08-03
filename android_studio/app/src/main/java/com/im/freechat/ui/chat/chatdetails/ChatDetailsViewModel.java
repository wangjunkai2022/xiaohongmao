package com.im.freechat.ui.chat.chatdetails;

import android.content.res.Resources;
import android.net.Uri;
import android.os.SystemClock;
import android.support.v4.media.MediaMetadataCompat;
import android.util.Size;
import androidx.arch.core.util.Function;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.os.BundleKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.Transformations;
import androidx.lifecycle.ViewModelKt;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.facebook.common.statfs.StatFsHelper;
import com.im.freechat.domain.usecase.chat.a;
import com.im.freechat.domain.usecase.messages.e;
import com.im.freechat.domain.usecase.messages.f;
import com.im.freechat.domain.usecase.messages.i;
import com.im.freechat.domain.usecase.messages.p;
import com.im.freechat.shared.entities.DownloadInfo;
import com.im.freechat.shared.entities.TypingEvent;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.chat.ChatMember;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.ChosenAttachment;
import com.im.freechat.shared.entities.message.FileAttachment;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.shared.entities.message.VideoAttachment;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.concurrent.TimersKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.j2;

/* compiled from: ChatDetailsViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000ì\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0004ã\u0002ä\u0002BÒ\u0002\u0012\u0006\u0010m\u001a\u00020j\u0012\u0006\u0010q\u001a\u00020n\u0012\u0006\u0010u\u001a\u00020r\u0012\u0006\u0010y\u001a\u00020v\u0012\u0006\u0010}\u001a\u00020z\u0012\u0007\u0010\u0081\u0001\u001a\u00020~\u0012\b\u0010\u0085\u0001\u001a\u00030\u0082\u0001\u0012\b\u0010\u0089\u0001\u001a\u00030\u0086\u0001\u0012\b\u0010\u008d\u0001\u001a\u00030\u008a\u0001\u0012\b\u0010à\u0002\u001a\u00030ß\u0002\u0012\b\u0010\u0091\u0001\u001a\u00030\u008e\u0001\u0012\b\u0010\u0095\u0001\u001a\u00030\u0092\u0001\u0012\b\u0010\u0099\u0001\u001a\u00030\u0096\u0001\u0012\b\u0010\u009d\u0001\u001a\u00030\u009a\u0001\u0012\b\u0010¡\u0001\u001a\u00030\u009e\u0001\u0012\b\u0010¥\u0001\u001a\u00030¢\u0001\u0012\b\u0010©\u0001\u001a\u00030¦\u0001\u0012\b\u0010\u00ad\u0001\u001a\u00030ª\u0001\u0012\b\u0010±\u0001\u001a\u00030®\u0001\u0012\b\u0010µ\u0001\u001a\u00030²\u0001\u0012\b\u0010¹\u0001\u001a\u00030¶\u0001\u0012\b\u0010½\u0001\u001a\u00030º\u0001\u0012\b\u0010Á\u0001\u001a\u00030¾\u0001\u0012\b\u0010Å\u0001\u001a\u00030Â\u0001\u0012\b\u0010É\u0001\u001a\u00030Æ\u0001\u0012\b\u0010Í\u0001\u001a\u00030Ê\u0001\u0012\b\u0010Ñ\u0001\u001a\u00030Î\u0001\u0012\b\u0010Õ\u0001\u001a\u00030Ò\u0001\u0012\b\u0010Ù\u0001\u001a\u00030Ö\u0001\u0012\b\u0010Ý\u0001\u001a\u00030Ú\u0001\u0012\b\u0010á\u0001\u001a\u00030Þ\u0001\u0012\b\u0010å\u0001\u001a\u00030â\u0001\u0012\b\u0010é\u0001\u001a\u00030æ\u0001\u0012\b\u0010í\u0001\u001a\u00030ê\u0001¢\u0006\u0006\bá\u0002\u0010â\u0002J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0016\u0010\u000e\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000f0\u0010*\u0004\u0018\u00010\u000fH\u0002J\b\u0010\u0013\u001a\u00020\tH\u0002J\u0006\u0010\u0014\u001a\u00020\tJ\u0006\u0010\u0015\u001a\u00020\u0005J\u0010\u0010\u0018\u001a\u00020\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016J$\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u00112\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b2\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u001c\u001a\u00020\tJ\u000e\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001dJ\u000e\u0010 \u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001dJ\u0016\u0010$\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\"J\u000e\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0003J\u0006\u0010'\u001a\u00020\u0005J\u0006\u0010(\u001a\u00020\tJ\u000e\u0010+\u001a\u00020\t2\u0006\u0010*\u001a\u00020)J\u0006\u0010,\u001a\u00020\tJ\u0014\u0010.\u001a\u00020\t2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00030\u000bJ\u0014\u0010/\u001a\u00020\t2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00030\u000bJ\u000e\u00101\u001a\u00020\u00052\u0006\u00100\u001a\u00020\fJ\u0006\u00102\u001a\u00020\u0005J\u0014\u00104\u001a\u00020\u00052\f\u00103\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u0014\u00107\u001a\u00020\t2\f\u00106\u001a\b\u0012\u0004\u0012\u0002050\u000bJ\u000e\u0010:\u001a\u00020\t2\u0006\u00109\u001a\u000208J\"\u0010?\u001a\u00020\t2\u0006\u0010;\u001a\u00020\u00032\b\b\u0002\u0010<\u001a\u00020\u00032\b\b\u0002\u0010>\u001a\u00020=J\u000e\u0010@\u001a\u00020\t2\u0006\u0010<\u001a\u00020\u0003J\u000e\u0010C\u001a\u00020\u00052\u0006\u0010B\u001a\u00020AJ\u0006\u0010D\u001a\u00020\tJ\u0006\u0010E\u001a\u00020\tJ\u0006\u0010F\u001a\u00020\tJ\u0006\u0010G\u001a\u00020\tJ\b\u0010H\u001a\u00020\tH\u0014J\u000e\u0010K\u001a\u00020\t2\u0006\u0010J\u001a\u00020IJ\u000e\u0010M\u001a\u00020\t2\u0006\u0010L\u001a\u00020\u0003J\u0006\u0010N\u001a\u00020\tJ\u0016\u0010Q\u001a\u00020\t2\u0006\u0010O\u001a\u00020A2\u0006\u0010P\u001a\u00020=J\u000e\u0010T\u001a\u00020\t2\u0006\u0010S\u001a\u00020RJ\u0006\u0010U\u001a\u00020\tJ\u000e\u0010W\u001a\u00020\t2\u0006\u0010V\u001a\u00020\u0011J\u0006\u0010X\u001a\u00020\u0011J\u0006\u0010Y\u001a\u00020=J\u0006\u0010Z\u001a\u00020=J\u0006\u0010[\u001a\u00020=J\u0006\u0010\\\u001a\u00020=J\u0006\u0010]\u001a\u00020\tJ\u000e\u0010_\u001a\u00020\t2\u0006\u0010^\u001a\u00020=J\u000e\u0010a\u001a\u00020\t2\u0006\u0010`\u001a\u00020\u0011J\u000e\u0010c\u001a\u00020\t2\u0006\u0010b\u001a\u00020\u000fJ\u0006\u0010d\u001a\u00020=J\u0012\u0010g\u001a\u0004\u0018\u00010f2\b\u0010e\u001a\u0004\u0018\u00010\u001dJ\u0010\u0010i\u001a\u00020\u000f2\b\u0010h\u001a\u0004\u0018\u00010\u000fR\u0014\u0010m\u001a\u00020j8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bk\u0010lR\u0014\u0010q\u001a\u00020n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bo\u0010pR\u0014\u0010u\u001a\u00020r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bs\u0010tR\u0014\u0010y\u001a\u00020v8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bw\u0010xR\u0014\u0010}\u001a\u00020z8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b{\u0010|R\u0016\u0010\u0081\u0001\u001a\u00020~8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R\u0018\u0010\u0085\u0001\u001a\u00030\u0082\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u0018\u0010\u0089\u0001\u001a\u00030\u0086\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R\u0018\u0010\u008d\u0001\u001a\u00030\u008a\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R\u0018\u0010\u0091\u0001\u001a\u00030\u008e\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u0018\u0010\u0095\u0001\u001a\u00030\u0092\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R\u0018\u0010\u0099\u0001\u001a\u00030\u0096\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0018\u0010\u009d\u0001\u001a\u00030\u009a\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u009c\u0001R\u0018\u0010¡\u0001\u001a\u00030\u009e\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001R\u0018\u0010¥\u0001\u001a\u00030¢\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b£\u0001\u0010¤\u0001R\u0018\u0010©\u0001\u001a\u00030¦\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b§\u0001\u0010¨\u0001R\u0018\u0010\u00ad\u0001\u001a\u00030ª\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b«\u0001\u0010¬\u0001R\u0018\u0010±\u0001\u001a\u00030®\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R\u0018\u0010µ\u0001\u001a\u00030²\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b³\u0001\u0010´\u0001R\u0018\u0010¹\u0001\u001a\u00030¶\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b·\u0001\u0010¸\u0001R\u0018\u0010½\u0001\u001a\u00030º\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b»\u0001\u0010¼\u0001R\u0018\u0010Á\u0001\u001a\u00030¾\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¿\u0001\u0010À\u0001R\u0018\u0010Å\u0001\u001a\u00030Â\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÃ\u0001\u0010Ä\u0001R\u0018\u0010É\u0001\u001a\u00030Æ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÇ\u0001\u0010È\u0001R\u0018\u0010Í\u0001\u001a\u00030Ê\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bË\u0001\u0010Ì\u0001R\u0018\u0010Ñ\u0001\u001a\u00030Î\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÏ\u0001\u0010Ð\u0001R\u0018\u0010Õ\u0001\u001a\u00030Ò\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÓ\u0001\u0010Ô\u0001R\u0018\u0010Ù\u0001\u001a\u00030Ö\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b×\u0001\u0010Ø\u0001R\u0018\u0010Ý\u0001\u001a\u00030Ú\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÛ\u0001\u0010Ü\u0001R\u0018\u0010á\u0001\u001a\u00030Þ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bß\u0001\u0010à\u0001R\u0018\u0010å\u0001\u001a\u00030â\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bã\u0001\u0010ä\u0001R\u0018\u0010é\u0001\u001a\u00030æ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bç\u0001\u0010è\u0001R\u0018\u0010í\u0001\u001a\u00030ê\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bë\u0001\u0010ì\u0001R\u0018\u0010\u0019\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bî\u0001\u0010ç\u0001R,\u0010õ\u0001\u001a\u0012\u0012\r\u0012\u000b ð\u0001*\u0004\u0018\u00010=0=0ï\u00018\u0006¢\u0006\u0010\n\u0006\bñ\u0001\u0010ò\u0001\u001a\u0006\bó\u0001\u0010ô\u0001R/\u0010ø\u0001\u001a\u0015\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020=0\u00100ï\u00018\u0006¢\u0006\u0010\n\u0006\bö\u0001\u0010ò\u0001\u001a\u0006\b÷\u0001\u0010ô\u0001R$\u0010ü\u0001\u001a\n\u0012\u0005\u0012\u00030ù\u00010ï\u00018\u0006¢\u0006\u0010\n\u0006\bú\u0001\u0010ò\u0001\u001a\u0006\bû\u0001\u0010ô\u0001R%\u0010ÿ\u0001\u001a\u0010\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030ý\u00010\u000b0ï\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bþ\u0001\u0010ò\u0001R#\u0010\u0082\u0002\u001a\t\u0012\u0004\u0012\u00020\u000f0ï\u00018\u0006¢\u0006\u0010\n\u0006\b\u0080\u0002\u0010ò\u0001\u001a\u0006\b\u0081\u0002\u0010ô\u0001R,\u0010\u008a\u0002\u001a\u0005\u0018\u00010\u0083\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0084\u0002\u0010\u0085\u0002\u001a\u0006\b\u0086\u0002\u0010\u0087\u0002\"\u0006\b\u0088\u0002\u0010\u0089\u0002R)\u0010\u0090\u0002\u001a\u000f\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u008b\u00028\u0006¢\u0006\u0010\n\u0006\b\u008c\u0002\u0010\u008d\u0002\u001a\u0006\b\u008e\u0002\u0010\u008f\u0002R)\u0010\u0096\u0002\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0091\u0002\u0010ç\u0001\u001a\u0006\b\u0092\u0002\u0010\u0093\u0002\"\u0006\b\u0094\u0002\u0010\u0095\u0002R%\u0010\u009c\u0002\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0097\u00028\u0006¢\u0006\u0010\n\u0006\b\u0098\u0002\u0010\u0099\u0002\u001a\u0006\b\u009a\u0002\u0010\u009b\u0002R&\u0010\u009f\u0002\u001a\f\u0012\u0007\u0012\u0005\u0018\u00010ý\u00010\u0097\u00028\u0006¢\u0006\u0010\n\u0006\b\u009d\u0002\u0010\u0099\u0002\u001a\u0006\b\u009e\u0002\u0010\u009b\u0002R#\u0010¢\u0002\u001a\t\u0012\u0004\u0012\u00020=0\u0097\u00028\u0006¢\u0006\u0010\n\u0006\b \u0002\u0010\u0099\u0002\u001a\u0006\b¡\u0002\u0010\u009b\u0002R8\u0010¥\u0002\u001a\u001e\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u001d ð\u0001*\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u000b0\u000b0ï\u00018\u0006¢\u0006\u0010\n\u0006\b£\u0002\u0010ò\u0001\u001a\u0006\b¤\u0002\u0010ô\u0001R,\u0010¨\u0002\u001a\u0012\u0012\r\u0012\u000b ð\u0001*\u0004\u0018\u00010f0f0\u0097\u00028\u0006¢\u0006\u0010\n\u0006\b¦\u0002\u0010\u0099\u0002\u001a\u0006\b§\u0002\u0010\u009b\u0002RD\u0010«\u0002\u001a*\u0012%\u0012#\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0003 ð\u0001*\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00100\u00100ï\u00018\u0006¢\u0006\u0010\n\u0006\b©\u0002\u0010ò\u0001\u001a\u0006\bª\u0002\u0010ô\u0001R8\u0010®\u0002\u001a\u001e\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0011 ð\u0001*\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000b0\u000b0\u0097\u00028\u0006¢\u0006\u0010\n\u0006\b¬\u0002\u0010\u0099\u0002\u001a\u0006\b\u00ad\u0002\u0010\u009b\u0002R'\u0010°\u0002\u001a\u0012\u0012\r\u0012\u000b ð\u0001*\u0004\u0018\u00010\u00110\u00110\u0097\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¯\u0002\u0010\u0099\u0002R'\u0010²\u0002\u001a\u0012\u0012\r\u0012\u000b ð\u0001*\u0004\u0018\u00010=0=0ï\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b±\u0002\u0010ò\u0001R'\u0010´\u0002\u001a\u0012\u0012\r\u0012\u000b ð\u0001*\u0004\u0018\u00010=0=0ï\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b³\u0002\u0010ò\u0001R\u001f\u0010·\u0002\u001a\n\u0012\u0005\u0012\u00030µ\u00020\u0097\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¶\u0002\u0010\u0099\u0002R\"\u0010¹\u0002\u001a\t\u0012\u0004\u0012\u00020\u000f0\u0097\u00028\u0006¢\u0006\u000f\n\u0005\bF\u0010\u0099\u0002\u001a\u0006\b¸\u0002\u0010\u009b\u0002R#\u0010\u0017\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00160ï\u00018\u0006¢\u0006\u000f\n\u0005\b\u0012\u0010ò\u0001\u001a\u0006\bº\u0002\u0010ô\u0001R$\u0010¼\u0002\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0ï\u00018\u0006¢\u0006\u000f\n\u0005\bM\u0010ò\u0001\u001a\u0006\b»\u0002\u0010ô\u0001R'\u00103\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0ï\u00018\u0006¢\u0006\u000f\n\u0005\b,\u0010ò\u0001\u001a\u0006\b½\u0002\u0010ô\u0001R)\u0010À\u0002\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020A0\u000b0\u0097\u00028\u0006¢\u0006\u0010\n\u0006\b¾\u0002\u0010\u0099\u0002\u001a\u0006\b¿\u0002\u0010\u009b\u0002R\"\u0010Â\u0002\u001a\t\u0012\u0004\u0012\u00020\u000f0ï\u00018\u0006¢\u0006\u000f\n\u0005\b_\u0010ò\u0001\u001a\u0006\bÁ\u0002\u0010ô\u0001R(\u0010Ä\u0002\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\u0097\u00028\u0006¢\u0006\u000f\n\u0005\b\u001c\u0010\u0099\u0002\u001a\u0006\bÃ\u0002\u0010\u009b\u0002R+\u0010Æ\u0002\u001a\u0012\u0012\r\u0012\u000b ð\u0001*\u0004\u0018\u00010\u00110\u00110\u0097\u00028\u0006¢\u0006\u000f\n\u0005\b/\u0010\u0099\u0002\u001a\u0006\bÅ\u0002\u0010\u009b\u0002R$\u0010È\u0002\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0097\u00028\u0006¢\u0006\u000f\n\u0005\b.\u0010\u0099\u0002\u001a\u0006\bÇ\u0002\u0010\u009b\u0002R\u001e\u0010Ì\u0002\u001a\n\u0012\u0005\u0012\u00030Ê\u00020É\u00028\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bN\u0010Ë\u0002R\u0017\u0010Ï\u0002\u001a\u0005\u0018\u00010ù\u00018F¢\u0006\b\u001a\u0006\bÍ\u0002\u0010Î\u0002R\u0014\u0010Ò\u0002\u001a\u00020=8F¢\u0006\b\u001a\u0006\bÐ\u0002\u0010Ñ\u0002R\u0014\u0010Ô\u0002\u001a\u00020=8F¢\u0006\b\u001a\u0006\bÓ\u0002\u0010Ñ\u0002R\u001a\u0010×\u0002\u001a\b\u0012\u0004\u0012\u00020R0\u000b8F¢\u0006\b\u001a\u0006\bÕ\u0002\u0010Ö\u0002R\u0016\u0010Ú\u0002\u001a\u0004\u0018\u00010R8F¢\u0006\b\u001a\u0006\bØ\u0002\u0010Ù\u0002R\u0014\u0010Ü\u0002\u001a\u00020=8F¢\u0006\b\u001a\u0006\bÛ\u0002\u0010Ñ\u0002R\u0014\u0010Þ\u0002\u001a\u00020=8F¢\u0006\b\u001a\u0006\bÝ\u0002\u0010Ñ\u0002¨\u0006å\u0002"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;", "Lcom/im/freechat/base/a;", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;", "", k4.b.f84740g, "Lkotlinx/coroutines/j2;", "I1", "Lcom/im/freechat/shared/entities/TypingEvent;", "typingEvent", "", "k1", "", "Lcom/im/freechat/shared/entities/message/Message;", "list", "E1", "", "", "", "f0", "P1", "G1", "Z0", "Lcom/im/freechat/ui/chat/chatdetails/z1;", "extraMessageInfo", "A1", k4.b.f84734a, k4.b.f84737d, "T0", "k0", "Landroid/net/Uri;", "uri", "a1", "y1", "mediaId", "Landroid/util/Size;", com.qennnsad.aknkaksd.data.repository.f.f47745b, "x1", "messageId", "n1", "z1", "H1", "Ljava/io/File;", "file", "F1", "h0", "messageIds", "m0", "l0", "message", "g1", "N1", "messages", "p1", "Lcom/im/freechat/shared/entities/message/Attachment;", "attachments", "o1", "Lcom/im/freechat/shared/entities/message/FileAttachment;", "fileMessage", "J1", "id", "startPos", "", "forcePause", "h1", "q1", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "msg", "l1", "p0", "M1", "e0", "L1", "onCleared", "Lcom/im/freechat/shared/entities/message/VideoAttachment;", "attachment", "o0", "it", "g0", "n0", "messageWrapper", t.b.f83859d, "r1", "Lcom/im/freechat/shared/entities/contact/UserModel;", "contact", "b1", "m1", "height", "B1", "z0", "u1", "t1", "w1", "s1", "c1", "forEveryone", "j0", "userId", "e1", "url", "d1", "v1", "contentUri", "Lcom/im/freechat/shared/entities/message/ChosenAttachment;", "Q1", "extension", "M0", "Lcom/im/freechat/domain/usecase/messages/k;", "c", "Lcom/im/freechat/domain/usecase/messages/k;", "subscribeChatMessagesInteractor", "Lcom/im/freechat/domain/usecase/chat/r;", "d", "Lcom/im/freechat/domain/usecase/chat/r;", "subscribeChatInteractor", "Lcom/im/freechat/domain/usecase/auth/e;", "e", "Lcom/im/freechat/domain/usecase/auth/e;", "listenConnectionStateInteractor", "Lcom/im/freechat/domain/usecase/chat/e;", "f", "Lcom/im/freechat/domain/usecase/chat/e;", "deleteChatByIdInteractor", "Lcom/im/freechat/domain/usecase/messages/j;", "g", "Lcom/im/freechat/domain/usecase/messages/j;", "sendMessageInteractor", "Lcom/im/freechat/domain/usecase/messages/b;", "h", "Lcom/im/freechat/domain/usecase/messages/b;", "getMessagesByIdInteractor", "Lcom/im/freechat/domain/usecase/messages/n;", ContextChain.TAG_INFRA, "Lcom/im/freechat/domain/usecase/messages/n;", "subscribePinnedMessageByChatIdInteractor", "Lcom/im/freechat/media/audio/c;", "j", "Lcom/im/freechat/media/audio/c;", "audioRecorder", "Lcom/im/freechat/domain/usecase/chat/a;", "k", "Lcom/im/freechat/domain/usecase/chat/a;", "clearHistoryInteractor", "Lcom/im/freechat/domain/usecase/members/h;", "m", "Lcom/im/freechat/domain/usecase/members/h;", "subscribeChatMembersInteractor", "Lcom/im/freechat/domain/usecase/contact/b;", "n", "Lcom/im/freechat/domain/usecase/contact/b;", "followContactInteractor", "Lcom/im/freechat/domain/usecase/contact/f;", "o", "Lcom/im/freechat/domain/usecase/contact/f;", "removeFriendInteractor", "Lcom/im/freechat/domain/usecase/contact/a;", "p", "Lcom/im/freechat/domain/usecase/contact/a;", "blockContactInteractor", "Lcom/im/freechat/domain/usecase/contact/j;", "q", "Lcom/im/freechat/domain/usecase/contact/j;", "unblockContactInteractor", "Lcom/im/freechat/domain/h;", "r", "Lcom/im/freechat/domain/h;", "fileUtility", "Lcom/im/freechat/domain/usecase/messages/i;", "s", "Lcom/im/freechat/domain/usecase/messages/i;", "sendGiphyStickerInteractor", "Lcom/im/freechat/domain/usecase/chat/q;", "t", "Lcom/im/freechat/domain/usecase/chat/q;", "startTypingInteractor", "Lcom/im/freechat/domain/usecase/chat/f;", "u", "Lcom/im/freechat/domain/usecase/chat/f;", "endTypingInteractor", "Lcom/im/freechat/domain/usecase/messages/c;", "v", "Lcom/im/freechat/domain/usecase/messages/c;", "pinMessageInteractor", "Lcom/im/freechat/domain/usecase/messages/o;", "w", "Lcom/im/freechat/domain/usecase/messages/o;", "unpinMessageInteractor", "Lcom/im/freechat/domain/usecase/chat/j;", y.b.f83919g, "Lcom/im/freechat/domain/usecase/chat/j;", "listenTypingInteractor", "Lcom/im/freechat/domain/usecase/messages/p;", y.b.f83920h, "Lcom/im/freechat/domain/usecase/messages/p;", "updateDraftMessageInteractor", "Lcom/im/freechat/domain/usecase/currentuser/h;", "z", "Lcom/im/freechat/domain/usecase/currentuser/h;", "setKeyboardHeightSettingInteractor", "Lcom/im/freechat/domain/usecase/currentuser/b;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Lcom/im/freechat/domain/usecase/currentuser/b;", "getKeyboardHeightSettingInteractor", "Lcom/im/freechat/utils/f;", "B", "Lcom/im/freechat/utils/f;", "downloadUtil", "Lcom/im/freechat/domain/usecase/messages/a;", "C", "Lcom/im/freechat/domain/usecase/messages/a;", "addToFavoritesInteractor", "Lcom/im/freechat/domain/usecase/messages/f;", "D", "Lcom/im/freechat/domain/usecase/messages/f;", "removeMessagesForMyselfInteractor", "Lcom/im/freechat/domain/usecase/messages/e;", ExifInterface.LONGITUDE_EAST, "Lcom/im/freechat/domain/usecase/messages/e;", "removeMessagesForEveryoneInteractor", "Lcom/im/freechat/domain/usecase/messages/d;", "F", "Lcom/im/freechat/domain/usecase/messages/d;", "readMessageByIdInteractor", "Lcom/im/freechat/domain/usecase/chat/s;", "G", "Lcom/im/freechat/domain/usecase/chat/s;", "subscribeChatsSyncStateInteractor", "Lcom/im/freechat/domain/usecase/messages/g;", "H", "Lcom/im/freechat/domain/usecase/messages/g;", "resendMessageInteractor", "Lcom/im/freechat/domain/n;", "I", "Lcom/im/freechat/domain/n;", "notificationManager", "Landroid/content/res/Resources;", "J", "Landroid/content/res/Resources;", "resources", "K", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", "L", "Landroidx/lifecycle/MutableLiveData;", "B0", "()Landroidx/lifecycle/MutableLiveData;", "loading", "M", "I0", "selectedIds", "Lcom/im/freechat/shared/entities/chat/Chat;", "N", "t0", "chatLiveData", "Lcom/im/freechat/shared/entities/chat/ChatMember;", "O", "chatMembers", "P", "N0", "typedText", "Ljava/util/Timer;", "Q", "Ljava/util/Timer;", "Q0", "()Ljava/util/Timer;", "D1", "(Ljava/util/Timer;)V", "typingTimer", "Lkotlin/Function1;", "R", "Lkotlin/jvm/functions/Function1;", "L0", "()Lkotlin/jvm/functions/Function1;", "startTyping", ExifInterface.LATITUDE_SOUTH, "J0", "()I", "C1", "(I)V", "selectionEnd", "Landroidx/lifecycle/LiveData;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/LiveData;", "D0", "()Landroidx/lifecycle/LiveData;", "mentionHints", "U", "w0", "currentUser", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "r0", "canClearHistory", ExifInterface.LONGITUDE_WEST, "C0", "mediaChosen", "X", "q0", "attachmentToDisplay", "Y", "O0", "typingEvents", "Z", "P0", "typingSet", "a0", "onlineCount", "b0", "socketConnected", "c0", "chatsSynchronizing", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;", "d0", "networkState", "v0", "chatStatus", "y0", "F0", "pinnedMessage", "E0", "i0", "x0", "displayMessageList", "H0", "searchQuery", "G0", "searchMessagesList", "R0", "unreadCount", "A0", "lastUnread", "Landroidx/lifecycle/Observer;", "", "Landroidx/lifecycle/Observer;", "playerObserver", "s0", "()Lcom/im/freechat/shared/entities/chat/Chat;", "chat", "S0", "()Z", "userHasSuperRights", "W0", "isGroupAdmin", "u0", "()Ljava/util/List;", "chatMemberContacts", "K0", "()Lcom/im/freechat/shared/entities/contact/UserModel;", "singleChatContact", "V0", "isGroup", "U0", "isChannel", "Lp4/e;", "playerUtil", "<init>", "(Lcom/im/freechat/domain/usecase/messages/k;Lcom/im/freechat/domain/usecase/chat/r;Lcom/im/freechat/domain/usecase/auth/e;Lcom/im/freechat/domain/usecase/chat/e;Lcom/im/freechat/domain/usecase/messages/j;Lcom/im/freechat/domain/usecase/messages/b;Lcom/im/freechat/domain/usecase/messages/n;Lcom/im/freechat/media/audio/c;Lcom/im/freechat/domain/usecase/chat/a;Lp4/e;Lcom/im/freechat/domain/usecase/members/h;Lcom/im/freechat/domain/usecase/contact/b;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/a;Lcom/im/freechat/domain/usecase/contact/j;Lcom/im/freechat/domain/h;Lcom/im/freechat/domain/usecase/messages/i;Lcom/im/freechat/domain/usecase/chat/q;Lcom/im/freechat/domain/usecase/chat/f;Lcom/im/freechat/domain/usecase/messages/c;Lcom/im/freechat/domain/usecase/messages/o;Lcom/im/freechat/domain/usecase/chat/j;Lcom/im/freechat/domain/usecase/messages/p;Lcom/im/freechat/domain/usecase/currentuser/h;Lcom/im/freechat/domain/usecase/currentuser/b;Lcom/im/freechat/utils/f;Lcom/im/freechat/domain/usecase/messages/a;Lcom/im/freechat/domain/usecase/messages/f;Lcom/im/freechat/domain/usecase/messages/e;Lcom/im/freechat/domain/usecase/messages/d;Lcom/im/freechat/domain/usecase/chat/s;Lcom/im/freechat/domain/usecase/messages/g;Lcom/im/freechat/domain/n;Landroid/content/res/Resources;)V", "Directions", "NetworkState", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChatDetailsViewModel extends com.im.freechat.base.a<Directions> {
    @m8.g
    private final com.im.freechat.domain.usecase.currentuser.b A;
    @m8.g
    private final com.im.freechat.utils.f B;
    @m8.g
    private final com.im.freechat.domain.usecase.messages.a C;
    @m8.g
    private final com.im.freechat.domain.usecase.messages.f D;
    @m8.g
    private final com.im.freechat.domain.usecase.messages.e E;
    @m8.g
    private final com.im.freechat.domain.usecase.messages.d F;
    @m8.g
    private final com.im.freechat.domain.usecase.chat.s G;
    @m8.g
    private final com.im.freechat.domain.usecase.messages.g H;
    @m8.g
    private final com.im.freechat.domain.n I;
    @m8.g
    private final Resources J;
    private int K;
    @m8.g
    private final MutableLiveData<Boolean> L;
    @m8.g
    private final MutableLiveData<Map<Long, Boolean>> M;
    @m8.g
    private final MutableLiveData<Chat> N;
    @m8.g
    private final MutableLiveData<List<ChatMember>> O;
    @m8.g
    private final MutableLiveData<String> P;
    @m8.h
    private Timer Q;
    @m8.g
    private final Function1<Unit, Unit> R;
    private volatile int S;
    @m8.g
    private final LiveData<String> T;
    @m8.g
    private final LiveData<ChatMember> U;
    @m8.g
    private final LiveData<Boolean> V;
    @m8.g
    private final MutableLiveData<List<Uri>> W;
    @m8.g
    private final LiveData<ChosenAttachment> X;
    @m8.g
    private final MutableLiveData<Map<TypingEvent, Long>> Y;
    @m8.g
    private final LiveData<List<Integer>> Z;
    @m8.g

    /* renamed from: a0 */
    private final LiveData<Integer> f42379a0;
    @m8.g

    /* renamed from: b0 */
    private final MutableLiveData<Boolean> f42380b0;
    @m8.g

    /* renamed from: c */
    private final com.im.freechat.domain.usecase.messages.k f42381c;
    @m8.g

    /* renamed from: c0 */
    private final MutableLiveData<Boolean> f42382c0;
    @m8.g

    /* renamed from: d */
    private final com.im.freechat.domain.usecase.chat.r f42383d;
    @m8.g

    /* renamed from: d0 */
    private final LiveData<NetworkState> f42384d0;
    @m8.g

    /* renamed from: e */
    private final com.im.freechat.domain.usecase.auth.e f42385e;
    @m8.g

    /* renamed from: e0 */
    private final LiveData<String> f42386e0;
    @m8.g

    /* renamed from: f */
    private final com.im.freechat.domain.usecase.chat.e f42387f;
    @m8.g

    /* renamed from: f0 */
    private final MutableLiveData<z1> f42388f0;
    @m8.g

    /* renamed from: g */
    private final com.im.freechat.domain.usecase.messages.j f42389g;
    @m8.g

    /* renamed from: g0 */
    private final MutableLiveData<Message> f42390g0;
    @m8.g

    /* renamed from: h */
    private final com.im.freechat.domain.usecase.messages.b f42391h;
    @m8.g

    /* renamed from: h0 */
    private final MutableLiveData<List<Message>> f42392h0;
    @m8.g

    /* renamed from: i */
    private final com.im.freechat.domain.usecase.messages.n f42393i;
    @m8.g

    /* renamed from: i0 */
    private final LiveData<List<com.im.freechat.ui.chat.chatdetails.messagelist.d>> f42394i0;
    @m8.g

    /* renamed from: j */
    private final com.im.freechat.media.audio.c f42395j;
    @m8.g

    /* renamed from: j0 */
    private final MutableLiveData<String> f42396j0;
    @m8.g

    /* renamed from: k */
    private final com.im.freechat.domain.usecase.chat.a f42397k;
    @m8.g

    /* renamed from: k0 */
    private final LiveData<List<Message>> f42398k0;
    @m8.g

    /* renamed from: l */
    private final p4.e f42399l;
    @m8.g

    /* renamed from: l0 */
    private final LiveData<Integer> f42400l0;
    @m8.g

    /* renamed from: m */
    private final com.im.freechat.domain.usecase.members.h f42401m;
    @m8.g

    /* renamed from: m0 */
    private final LiveData<Integer> f42402m0;
    @m8.g

    /* renamed from: n */
    private final com.im.freechat.domain.usecase.contact.b f42403n;
    @m8.g

    /* renamed from: n0 */
    private final Observer<Object> f42404n0;
    @m8.g

    /* renamed from: o */
    private final com.im.freechat.domain.usecase.contact.f f42405o;
    @m8.g

    /* renamed from: p */
    private final com.im.freechat.domain.usecase.contact.a f42406p;
    @m8.g

    /* renamed from: q */
    private final com.im.freechat.domain.usecase.contact.j f42407q;
    @m8.g

    /* renamed from: r */
    private final com.im.freechat.domain.h f42408r;
    @m8.g

    /* renamed from: s */
    private final com.im.freechat.domain.usecase.messages.i f42409s;
    @m8.g

    /* renamed from: t */
    private final com.im.freechat.domain.usecase.chat.q f42410t;
    @m8.g

    /* renamed from: u */
    private final com.im.freechat.domain.usecase.chat.f f42411u;
    @m8.g

    /* renamed from: v */
    private final com.im.freechat.domain.usecase.messages.c f42412v;
    @m8.g

    /* renamed from: w */
    private final com.im.freechat.domain.usecase.messages.o f42413w;
    @m8.g

    /* renamed from: x */
    private final com.im.freechat.domain.usecase.chat.j f42414x;
    @m8.g

    /* renamed from: y */
    private final com.im.freechat.domain.usecase.messages.p f42415y;
    @m8.g

    /* renamed from: z */
    private final com.im.freechat.domain.usecase.currentuser.h f42416z;

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;", "", "(Ljava/lang/String;I)V", "OPEN_FULLSCREEN", "BACK", "OPEN_FILE", "NAVIGATE_GROUP_MANAGER", "NAVIGATE_USER_PROFILE", "NAVIGATE_SELECT_CHAT", "NAVIGATE_CHAT", "NAVIGATE_IN_APP_BROWSER", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Directions {
        OPEN_FULLSCREEN,
        BACK,
        OPEN_FILE,
        NAVIGATE_GROUP_MANAGER,
        NAVIGATE_USER_PROFILE,
        NAVIGATE_SELECT_CHAT,
        NAVIGATE_CHAT,
        NAVIGATE_IN_APP_BROWSER
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;", "", "(Ljava/lang/String;I)V", "RECONNECTING", "SYNCHRONIZING", "CONNECTED", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum NetworkState {
        RECONNECTING,
        SYNCHRONIZING,
        CONNECTED
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$blockContact$1", f = "ChatDetailsViewModel.kt", i = {}, l = {659}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42419a;

        /* renamed from: b */
        private /* synthetic */ Object f42420b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Continuation<? super a> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            a aVar = new a(continuation);
            aVar.f42420b = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            ChatDetailsViewModel chatDetailsViewModel;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42419a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.s0 s0Var = (kotlinx.coroutines.s0) this.f42420b;
                UserModel K0 = ChatDetailsViewModel.this.K0();
                if (K0 != null) {
                    ChatDetailsViewModel chatDetailsViewModel2 = ChatDetailsViewModel.this;
                    com.im.freechat.domain.usecase.contact.a aVar = chatDetailsViewModel2.f42406p;
                    Integer boxInt = Boxing.boxInt(K0.getUserId());
                    this.f42420b = chatDetailsViewModel2;
                    this.f42419a = 1;
                    a10 = aVar.a(boxInt, this);
                    if (a10 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    chatDetailsViewModel = chatDetailsViewModel2;
                } else {
                    ChatDetailsViewModel.this.h(b.s.f2373r1, new Object[0]);
                    return Unit.INSTANCE;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                chatDetailsViewModel = (ChatDetailsViewModel) this.f42420b;
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            if (Result.m77isSuccessimpl(a10)) {
                Unit unit = (Unit) a10;
                chatDetailsViewModel.h(b.s.f2218c0, new Object[0]);
            }
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                chatDetailsViewModel.h(b.s.f2218c0, new Object[0]);
            }
            Result.m69boximpl(a10);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$setKeyboardHeight$1", f = "ChatDetailsViewModel.kt", i = {}, l = {741}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a0 extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42422a;

        /* renamed from: c */
        final /* synthetic */ int f42424c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a0(int i4, Continuation<? super a0> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
            this.f42424c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a0(this.f42424c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a0) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42422a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.currentuser.h hVar = ChatDetailsViewModel.this.f42416z;
                Integer boxInt = Boxing.boxInt(this.f42424c);
                this.f42422a = 1;
                if (hVar.a(boxInt, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat;", "chatLiveData", "Lcom/im/freechat/shared/entities/chat/ChatMember;", "currentUser", "", "a", "(Lcom/im/freechat/shared/entities/chat/Chat;Lcom/im/freechat/shared/entities/chat/ChatMember;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function2<Chat, ChatMember, Boolean> {

        /* renamed from: a */
        public static final b f42425a = new b();

        b() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: a */
        public final Boolean invoke(@m8.h Chat chat, @m8.h ChatMember chatMember) {
            ChatMember.Role role;
            boolean z9 = true;
            boolean z10 = (chat == null || chat.getType() == Chat.Type.SINGLE) ? false : true;
            boolean z11 = (chatMember == null || (role = chatMember.getRole()) == null || !role.isGroupAdmin()) ? false : true;
            if (z10 && !z11) {
                z9 = false;
            }
            return Boolean.valueOf(z9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "it", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$startTyping$1", f = "ChatDetailsViewModel.kt", i = {}, l = {114}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b0 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42426a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b0(Continuation<? super b0> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b0(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g Unit unit, @m8.h Continuation<? super Unit> continuation) {
            return ((b0) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42426a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.chat.q qVar = ChatDetailsViewModel.this.f42410t;
                Integer boxInt = Boxing.boxInt(ChatDetailsViewModel.this.K);
                this.f42426a = 1;
                if (qVar.a(boxInt, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u00012\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\n¢\u0006\u0004\b\t\u0010\n"}, d2 = {"", "", "typingSet", "onlineCount", "Lcom/im/freechat/shared/entities/chat/Chat;", "chatLiveData", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;", "networkState", "", "a", "(Ljava/util/List;Ljava/lang/Integer;Lcom/im/freechat/shared/entities/chat/Chat;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;)Ljava/lang/String;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function4<List<? extends Integer>, Integer, Chat, NetworkState, String> {

        /* compiled from: ChatDetailsViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\r\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "userId", "", "a", "(I)Ljava/lang/CharSequence;"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function1<Integer, CharSequence> {

            /* renamed from: a */
            final /* synthetic */ ChatDetailsViewModel f42429a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ChatDetailsViewModel chatDetailsViewModel) {
                super(1);
                this.f42429a = chatDetailsViewModel;
            }

            @m8.g
            public final CharSequence a(int i4) {
                Object obj;
                String displayName;
                boolean z9;
                Iterator<T> it = this.f42429a.u0().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    if (((UserModel) obj).getUserId() == i4) {
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
                UserModel userModel = (UserModel) obj;
                return (userModel == null || (displayName = userModel.getDisplayName()) == null) ? String.valueOf(i4) : displayName;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ CharSequence invoke(Integer num) {
                return a(num.intValue());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c() {
            super(4);
            ChatDetailsViewModel.this = r1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:88:0x0064, code lost:
            if (((java.lang.Number) r13).intValue() == r12.getUserId()) goto L27;
         */
        @Override // kotlin.jvm.functions.Function4
        @m8.h
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.String invoke(@m8.h java.util.List<java.lang.Integer> r11, @m8.h java.lang.Integer r12, @m8.h com.im.freechat.shared.entities.chat.Chat r13, @m8.h com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel.NetworkState r14) {
            /*
                Method dump skipped, instructions count: 255
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel.c.invoke(java.util.List, java.lang.Integer, com.im.freechat.shared.entities.chat.Chat, com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$NetworkState):java.lang.String");
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$subscribeDataEvents$1", f = "ChatDetailsViewModel.kt", i = {}, l = {363, 368, 386, 395, 399, TypedValues.Cycle.TYPE_VISIBILITY, 414}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class c0 extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42430a;

        /* compiled from: ChatDetailsViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "Lcom/im/freechat/shared/entities/chat/Chat;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$subscribeDataEvents$1$1", f = "ChatDetailsViewModel.kt", i = {}, l = {364}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends Chat>, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f42432a;

            /* renamed from: b */
            private /* synthetic */ Object f42433b;

            /* renamed from: c */
            final /* synthetic */ ChatDetailsViewModel f42434c;

            /* compiled from: ChatDetailsViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$subscribeDataEvents$1$1$1", f = "ChatDetailsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$c0$a$a */
            /* loaded from: classes3.dex */
            public static final class C0347a extends SuspendLambda implements Function2<Chat, Continuation<? super Unit>, Object> {

                /* renamed from: a */
                int f42435a;

                /* renamed from: b */
                /* synthetic */ Object f42436b;

                /* renamed from: c */
                final /* synthetic */ ChatDetailsViewModel f42437c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0347a(ChatDetailsViewModel chatDetailsViewModel, Continuation<? super C0347a> continuation) {
                    super(2, continuation);
                    this.f42437c = chatDetailsViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    C0347a c0347a = new C0347a(this.f42437c, continuation);
                    c0347a.f42436b = obj;
                    return c0347a;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.h Chat chat, @m8.h Continuation<? super Unit> continuation) {
                    return ((C0347a) create(chat, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f42435a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f42437c.t0().setValue((Chat) this.f42436b);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ChatDetailsViewModel chatDetailsViewModel, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f42434c = chatDetailsViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f42434c, continuation);
                aVar.f42433b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<Chat> result, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f42432a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    C0347a c0347a = new C0347a(this.f42434c, null);
                    this.f42432a = 1;
                    if (((com.im.freechat.shared.entities.Result) this.f42433b).onSuccess(c0347a, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* compiled from: ChatDetailsViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "Lcom/im/freechat/shared/entities/message/Message;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$subscribeDataEvents$1$2", f = "ChatDetailsViewModel.kt", i = {}, l = {369}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class b extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends Message>, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f42438a;

            /* renamed from: b */
            private /* synthetic */ Object f42439b;

            /* renamed from: c */
            final /* synthetic */ Ref.BooleanRef f42440c;

            /* renamed from: d */
            final /* synthetic */ ChatDetailsViewModel f42441d;

            /* compiled from: ChatDetailsViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/message/Message;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$subscribeDataEvents$1$2$1", f = "ChatDetailsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* loaded from: classes3.dex */
            public static final class a extends SuspendLambda implements Function2<Message, Continuation<? super Unit>, Object> {

                /* renamed from: a */
                int f42442a;

                /* renamed from: b */
                /* synthetic */ Object f42443b;

                /* renamed from: c */
                final /* synthetic */ Ref.BooleanRef f42444c;

                /* renamed from: d */
                final /* synthetic */ ChatDetailsViewModel f42445d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(Ref.BooleanRef booleanRef, ChatDetailsViewModel chatDetailsViewModel, Continuation<? super a> continuation) {
                    super(2, continuation);
                    this.f42444c = booleanRef;
                    this.f42445d = chatDetailsViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    a aVar = new a(this.f42444c, this.f42445d, continuation);
                    aVar.f42443b = obj;
                    return aVar;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.h Message message, @m8.h Continuation<? super Unit> continuation) {
                    return ((a) create(message, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f42442a == 0) {
                        ResultKt.throwOnFailure(obj);
                        Message message = (Message) this.f42443b;
                        if (this.f42444c.element) {
                            Unit unit = null;
                            Long boxLong = message != null ? Boxing.boxLong(message.getMessageId()) : null;
                            Message value = this.f42445d.F0().getValue();
                            if (!Intrinsics.areEqual(boxLong, value != null ? Boxing.boxLong(value.getMessageId()) : null)) {
                                if (message != null) {
                                    ChatDetailsViewModel chatDetailsViewModel = this.f42445d;
                                    unit = chatDetailsViewModel.g(chatDetailsViewModel.J.getString(b.s.H0, message.getSender().getDisplayName(), com.im.freechat.extend.p.e(message, chatDetailsViewModel.J)));
                                }
                                if (unit == null) {
                                    this.f42445d.h(b.s.C0, new Object[0]);
                                }
                            }
                        }
                        this.f42445d.F0().setValue(message);
                        this.f42444c.element = true;
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(Ref.BooleanRef booleanRef, ChatDetailsViewModel chatDetailsViewModel, Continuation<? super b> continuation) {
                super(2, continuation);
                this.f42440c = booleanRef;
                this.f42441d = chatDetailsViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                b bVar = new b(this.f42440c, this.f42441d, continuation);
                bVar.f42439b = obj;
                return bVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<Message> result, @m8.h Continuation<? super Unit> continuation) {
                return ((b) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f42438a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    a aVar = new a(this.f42440c, this.f42441d, null);
                    this.f42438a = 1;
                    if (((com.im.freechat.shared.entities.Result) this.f42439b).onSuccess(aVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* compiled from: ChatDetailsViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/chat/ChatMember;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$subscribeDataEvents$1$3", f = "ChatDetailsViewModel.kt", i = {}, l = {387}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class c extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends List<? extends ChatMember>>, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f42446a;

            /* renamed from: b */
            private /* synthetic */ Object f42447b;

            /* renamed from: c */
            final /* synthetic */ ChatDetailsViewModel f42448c;

            /* compiled from: ChatDetailsViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/chat/ChatMember;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$subscribeDataEvents$1$3$1", f = "ChatDetailsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* loaded from: classes3.dex */
            public static final class a extends SuspendLambda implements Function2<List<? extends ChatMember>, Continuation<? super Unit>, Object> {

                /* renamed from: a */
                int f42449a;

                /* renamed from: b */
                /* synthetic */ Object f42450b;

                /* renamed from: c */
                final /* synthetic */ ChatDetailsViewModel f42451c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(ChatDetailsViewModel chatDetailsViewModel, Continuation<? super a> continuation) {
                    super(2, continuation);
                    this.f42451c = chatDetailsViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    a aVar = new a(this.f42451c, continuation);
                    aVar.f42450b = obj;
                    return aVar;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g List<ChatMember> list, @m8.h Continuation<? super Unit> continuation) {
                    return ((a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f42449a == 0) {
                        ResultKt.throwOnFailure(obj);
                        List list = (List) this.f42450b;
                        this.f42451c.O.setValue(list);
                        boolean z9 = true;
                        if (list.size() == 1 && ((ChatMember) list.get(0)).getContact().isCurrentUser()) {
                            Chat s02 = this.f42451c.s0();
                            if ((s02 == null || com.im.freechat.extend.g.c(s02)) ? false : false) {
                                com.im.freechat.base.a.f(this.f42451c, Directions.BACK, null, 2, null);
                            }
                        }
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(ChatDetailsViewModel chatDetailsViewModel, Continuation<? super c> continuation) {
                super(2, continuation);
                this.f42448c = chatDetailsViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                c cVar = new c(this.f42448c, continuation);
                cVar.f42447b = obj;
                return cVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<? extends List<ChatMember>> result, @m8.h Continuation<? super Unit> continuation) {
                return ((c) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f42446a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    a aVar = new a(this.f42448c, null);
                    this.f42446a = 1;
                    if (((com.im.freechat.shared.entities.Result) this.f42447b).onSuccess(aVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* compiled from: ChatDetailsViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "Lcom/im/freechat/shared/entities/TypingEvent;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$subscribeDataEvents$1$4", f = "ChatDetailsViewModel.kt", i = {}, l = {396}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class d extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends TypingEvent>, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f42452a;

            /* renamed from: b */
            private /* synthetic */ Object f42453b;

            /* renamed from: c */
            final /* synthetic */ ChatDetailsViewModel f42454c;

            /* compiled from: ChatDetailsViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/TypingEvent;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$subscribeDataEvents$1$4$1", f = "ChatDetailsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* loaded from: classes3.dex */
            public static final class a extends SuspendLambda implements Function2<TypingEvent, Continuation<? super Unit>, Object> {

                /* renamed from: a */
                int f42455a;

                /* renamed from: b */
                /* synthetic */ Object f42456b;

                /* renamed from: c */
                final /* synthetic */ ChatDetailsViewModel f42457c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(ChatDetailsViewModel chatDetailsViewModel, Continuation<? super a> continuation) {
                    super(2, continuation);
                    this.f42457c = chatDetailsViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    a aVar = new a(this.f42457c, continuation);
                    aVar.f42456b = obj;
                    return aVar;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g TypingEvent typingEvent, @m8.h Continuation<? super Unit> continuation) {
                    return ((a) create(typingEvent, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f42455a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f42457c.k1((TypingEvent) this.f42456b);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            d(ChatDetailsViewModel chatDetailsViewModel, Continuation<? super d> continuation) {
                super(2, continuation);
                this.f42454c = chatDetailsViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                d dVar = new d(this.f42454c, continuation);
                dVar.f42453b = obj;
                return dVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<TypingEvent> result, @m8.h Continuation<? super Unit> continuation) {
                return ((d) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f42452a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    a aVar = new a(this.f42454c, null);
                    this.f42452a = 1;
                    if (((com.im.freechat.shared.entities.Result) this.f42453b).onSuccess(aVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* compiled from: ChatDetailsViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$subscribeDataEvents$1$5", f = "ChatDetailsViewModel.kt", i = {}, l = {StatFsHelper.f11024h}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class e extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends Boolean>, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f42458a;

            /* renamed from: b */
            private /* synthetic */ Object f42459b;

            /* renamed from: c */
            final /* synthetic */ ChatDetailsViewModel f42460c;

            /* compiled from: ChatDetailsViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$subscribeDataEvents$1$5$1", f = "ChatDetailsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* loaded from: classes3.dex */
            public static final class a extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

                /* renamed from: a */
                int f42461a;

                /* renamed from: b */
                /* synthetic */ boolean f42462b;

                /* renamed from: c */
                final /* synthetic */ ChatDetailsViewModel f42463c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(ChatDetailsViewModel chatDetailsViewModel, Continuation<? super a> continuation) {
                    super(2, continuation);
                    this.f42463c = chatDetailsViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    a aVar = new a(this.f42463c, continuation);
                    aVar.f42462b = ((Boolean) obj).booleanValue();
                    return aVar;
                }

                @m8.h
                public final Object h(boolean z9, @m8.h Continuation<? super Unit> continuation) {
                    return ((a) create(Boolean.valueOf(z9), continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
                    return h(bool.booleanValue(), continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f42461a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f42463c.f42382c0.postValue(Boxing.boxBoolean(this.f42462b));
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            e(ChatDetailsViewModel chatDetailsViewModel, Continuation<? super e> continuation) {
                super(2, continuation);
                this.f42460c = chatDetailsViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                e eVar = new e(this.f42460c, continuation);
                eVar.f42459b = obj;
                return eVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<Boolean> result, @m8.h Continuation<? super Unit> continuation) {
                return ((e) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f42458a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    a aVar = new a(this.f42460c, null);
                    this.f42458a = 1;
                    if (((com.im.freechat.shared.entities.Result) this.f42459b).onSuccess(aVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* compiled from: ChatDetailsViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/message/Message;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$subscribeDataEvents$1$6", f = "ChatDetailsViewModel.kt", i = {}, l = {411}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class f extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends List<? extends Message>>, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f42464a;

            /* renamed from: b */
            private /* synthetic */ Object f42465b;

            /* renamed from: c */
            final /* synthetic */ ChatDetailsViewModel f42466c;

            /* compiled from: ChatDetailsViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/message/Message;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$subscribeDataEvents$1$6$1", f = "ChatDetailsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* loaded from: classes3.dex */
            public static final class a extends SuspendLambda implements Function2<List<? extends Message>, Continuation<? super Unit>, Object> {

                /* renamed from: a */
                int f42467a;

                /* renamed from: b */
                /* synthetic */ Object f42468b;

                /* renamed from: c */
                final /* synthetic */ ChatDetailsViewModel f42469c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(ChatDetailsViewModel chatDetailsViewModel, Continuation<? super a> continuation) {
                    super(2, continuation);
                    this.f42469c = chatDetailsViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    a aVar = new a(this.f42469c, continuation);
                    aVar.f42468b = obj;
                    return aVar;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g List<Message> list, @m8.h Continuation<? super Unit> continuation) {
                    return ((a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f42467a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f42469c.E0().setValue((List) this.f42468b);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            f(ChatDetailsViewModel chatDetailsViewModel, Continuation<? super f> continuation) {
                super(2, continuation);
                this.f42466c = chatDetailsViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                f fVar = new f(this.f42466c, continuation);
                fVar.f42465b = obj;
                return fVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<? extends List<Message>> result, @m8.h Continuation<? super Unit> continuation) {
                return ((f) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f42464a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    a aVar = new a(this.f42466c, null);
                    this.f42464a = 1;
                    if (((com.im.freechat.shared.entities.Result) this.f42465b).onSuccess(aVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* compiled from: ChatDetailsViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$subscribeDataEvents$1$7", f = "ChatDetailsViewModel.kt", i = {}, l = {415}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class g extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends Boolean>, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f42470a;

            /* renamed from: b */
            private /* synthetic */ Object f42471b;

            /* renamed from: c */
            final /* synthetic */ ChatDetailsViewModel f42472c;

            /* compiled from: ChatDetailsViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$subscribeDataEvents$1$7$1", f = "ChatDetailsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* loaded from: classes3.dex */
            public static final class a extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

                /* renamed from: a */
                int f42473a;

                /* renamed from: b */
                /* synthetic */ boolean f42474b;

                /* renamed from: c */
                final /* synthetic */ ChatDetailsViewModel f42475c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(ChatDetailsViewModel chatDetailsViewModel, Continuation<? super a> continuation) {
                    super(2, continuation);
                    this.f42475c = chatDetailsViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    a aVar = new a(this.f42475c, continuation);
                    aVar.f42474b = ((Boolean) obj).booleanValue();
                    return aVar;
                }

                @m8.h
                public final Object h(boolean z9, @m8.h Continuation<? super Unit> continuation) {
                    return ((a) create(Boolean.valueOf(z9), continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
                    return h(bool.booleanValue(), continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f42473a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f42475c.f42380b0.postValue(Boxing.boxBoolean(this.f42474b));
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            g(ChatDetailsViewModel chatDetailsViewModel, Continuation<? super g> continuation) {
                super(2, continuation);
                this.f42472c = chatDetailsViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                g gVar = new g(this.f42472c, continuation);
                gVar.f42471b = obj;
                return gVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<Boolean> result, @m8.h Continuation<? super Unit> continuation) {
                return ((g) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f42470a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    a aVar = new a(this.f42472c, null);
                    this.f42470a = 1;
                    if (((com.im.freechat.shared.entities.Result) this.f42471b).onSuccess(aVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c0(Continuation<? super c0> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c0(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c0) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:54:0x007b A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:57:0x009c A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:60:0x00bd A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:63:0x00d6 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:66:0x00fa A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0113 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 300
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel.c0.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$deleteAllMessages$1", f = "ChatDetailsViewModel.kt", i = {}, l = {793}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class d extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42476a;

        /* renamed from: c */
        final /* synthetic */ boolean f42478c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(boolean z9, Continuation<? super d> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
            this.f42478c = z9;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new d(this.f42478c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((d) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42476a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.chat.a aVar = ChatDetailsViewModel.this.f42397k;
                a.C0319a c0319a = new a.C0319a(ChatDetailsViewModel.this.K, this.f42478c);
                this.f42476a = 1;
                if (aVar.a(c0319a, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/DownloadInfo;", "it", "", "a", "(Lcom/im/freechat/shared/entities/DownloadInfo;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d0 extends Lambda implements Function1<DownloadInfo, Unit> {

        /* renamed from: a */
        final /* synthetic */ FileAttachment f42479a;

        /* renamed from: b */
        final /* synthetic */ ChatDetailsViewModel f42480b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d0(FileAttachment fileAttachment, ChatDetailsViewModel chatDetailsViewModel) {
            super(1);
            this.f42479a = fileAttachment;
            this.f42480b = chatDetailsViewModel;
        }

        public final void a(@m8.h DownloadInfo downloadInfo) {
            String localPath;
            if (downloadInfo == null || (localPath = downloadInfo.getLocalPath()) == null) {
                localPath = this.f42479a.getLocalPath();
                Intrinsics.checkNotNull(localPath);
            }
            File file = new File(localPath);
            ChatDetailsViewModel chatDetailsViewModel = this.f42480b;
            Directions directions = Directions.OPEN_FILE;
            String b10 = y1.b();
            com.im.freechat.domain.h hVar = this.f42480b.f42408r;
            Uri fromFile = Uri.fromFile(file);
            Intrinsics.checkNotNullExpressionValue(fromFile, "fromFile(this)");
            String uri = fromFile.toString();
            Intrinsics.checkNotNullExpressionValue(uri, "file.toUri().toString()");
            chatDetailsViewModel.e(directions, BundleKt.bundleOf(TuplesKt.to(y1.c(), file.getAbsolutePath()), TuplesKt.to(b10, hVar.g(uri))));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(DownloadInfo downloadInfo) {
            a(downloadInfo);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$deleteChat$1", f = "ChatDetailsViewModel.kt", i = {}, l = {448}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class e extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42481a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(Continuation<? super e> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new e(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((e) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42481a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.chat.e eVar = ChatDetailsViewModel.this.f42387f;
                Integer boxInt = Boxing.boxInt(ChatDetailsViewModel.this.K);
                this.f42481a = 1;
                a10 = eVar.a(boxInt, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            ChatDetailsViewModel chatDetailsViewModel = ChatDetailsViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                Unit unit = (Unit) a10;
                com.im.freechat.base.a.f(chatDetailsViewModel, Directions.BACK, null, 2, null);
            }
            ChatDetailsViewModel chatDetailsViewModel2 = ChatDetailsViewModel.this;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(a10);
            if (m73exceptionOrNullimpl != null) {
                chatDetailsViewModel2.g(m73exceptionOrNullimpl.getLocalizedMessage());
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class e0 extends Lambda implements Function0<Unit> {

        /* renamed from: a */
        public static final e0 f42483a = new e0();

        e0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$deleteMessageForEveryone$1", f = "ChatDetailsViewModel.kt", i = {}, l = {541}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class f extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42484a;

        /* renamed from: c */
        final /* synthetic */ List<Long> f42486c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(List<Long> list, Continuation<? super f> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
            this.f42486c = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new f(this.f42486c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((f) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42484a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.messages.e eVar = ChatDetailsViewModel.this.E;
                e.a aVar = new e.a(this.f42486c, ChatDetailsViewModel.this.K);
                this.f42484a = 1;
                if (eVar.a(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$unblockContact$1", f = "ChatDetailsViewModel.kt", i = {}, l = {669}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class f0 extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42487a;

        /* renamed from: b */
        private /* synthetic */ Object f42488b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f0(Continuation<? super f0> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            f0 f0Var = new f0(continuation);
            f0Var.f42488b = obj;
            return f0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((f0) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            ChatDetailsViewModel chatDetailsViewModel;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42487a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.s0 s0Var = (kotlinx.coroutines.s0) this.f42488b;
                UserModel K0 = ChatDetailsViewModel.this.K0();
                if (K0 != null) {
                    ChatDetailsViewModel chatDetailsViewModel2 = ChatDetailsViewModel.this;
                    com.im.freechat.domain.usecase.contact.j jVar = chatDetailsViewModel2.f42407q;
                    Integer boxInt = Boxing.boxInt(K0.getUserId());
                    this.f42488b = chatDetailsViewModel2;
                    this.f42487a = 1;
                    a10 = jVar.a(boxInt, this);
                    if (a10 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    chatDetailsViewModel = chatDetailsViewModel2;
                } else {
                    ChatDetailsViewModel.this.h(b.s.f2393t1, new Object[0]);
                    return Unit.INSTANCE;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                chatDetailsViewModel = (ChatDetailsViewModel) this.f42488b;
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            if (Result.m77isSuccessimpl(a10)) {
                Unit unit = (Unit) a10;
                chatDetailsViewModel.h(b.s.f2324m2, new Object[0]);
            }
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                chatDetailsViewModel.h(b.s.f2324m2, new Object[0]);
            }
            Result.m69boximpl(a10);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$deleteMessageForMyself$1", f = "ChatDetailsViewModel.kt", i = {}, l = {532}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class g extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42490a;

        /* renamed from: c */
        final /* synthetic */ List<Long> f42492c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(List<Long> list, Continuation<? super g> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
            this.f42492c = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new g(this.f42492c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((g) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42490a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.messages.f fVar = ChatDetailsViewModel.this.D;
                f.a aVar = new f.a(this.f42492c, ChatDetailsViewModel.this.K);
                this.f42490a = 1;
                if (fVar.a(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$unfollowContact$1", f = "ChatDetailsViewModel.kt", i = {}, l = {649}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class g0 extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42493a;

        /* renamed from: b */
        private /* synthetic */ Object f42494b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g0(Continuation<? super g0> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            g0 g0Var = new g0(continuation);
            g0Var.f42494b = obj;
            return g0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((g0) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            ChatDetailsViewModel chatDetailsViewModel;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42493a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.s0 s0Var = (kotlinx.coroutines.s0) this.f42494b;
                UserModel K0 = ChatDetailsViewModel.this.K0();
                if (K0 != null) {
                    ChatDetailsViewModel chatDetailsViewModel2 = ChatDetailsViewModel.this;
                    com.im.freechat.domain.usecase.contact.f fVar = chatDetailsViewModel2.f42405o;
                    Integer boxInt = Boxing.boxInt(K0.getUserId());
                    this.f42494b = chatDetailsViewModel2;
                    this.f42493a = 1;
                    a10 = fVar.a(boxInt, this);
                    if (a10 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    chatDetailsViewModel = chatDetailsViewModel2;
                } else {
                    ChatDetailsViewModel.this.h(b.s.f2403u1, new Object[0]);
                    return Unit.INSTANCE;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                chatDetailsViewModel = (ChatDetailsViewModel) this.f42494b;
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            if (Result.m77isSuccessimpl(a10)) {
                Unit unit = (Unit) a10;
                chatDetailsViewModel.h(b.s.f2344o2, new Object[0]);
            }
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                chatDetailsViewModel.h(b.s.f2344o2, new Object[0]);
            }
            Result.m69boximpl(a10);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00002\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00002\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00032\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0000H\n¢\u0006\u0004\b\t\u0010\n"}, d2 = {"", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", t.b.f83861f, "", "", "", "selectedIds", "Lcom/im/freechat/shared/entities/message/Message;", "messages", "a", "(Ljava/util/List;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class h extends Lambda implements Function3<List<? extends com.im.freechat.ui.chat.chatdetails.messagelist.d>, Map<Long, ? extends Boolean>, List<? extends Message>, List<? extends com.im.freechat.ui.chat.chatdetails.messagelist.d>> {

        /* renamed from: a */
        public static final h f42496a = new h();

        h() {
            super(3);
        }

        @Override // kotlin.jvm.functions.Function3
        @m8.h
        /* renamed from: a */
        public final List<com.im.freechat.ui.chat.chatdetails.messagelist.d> invoke(@m8.h List<com.im.freechat.ui.chat.chatdetails.messagelist.d> list, @m8.h Map<Long, Boolean> map, @m8.h List<Message> list2) {
            int collectionSizeOrDefault;
            boolean containsKey;
            int collectionSizeOrDefault2;
            com.im.freechat.ui.chat.chatdetails.messagelist.d dVar;
            Object obj;
            List<com.im.freechat.ui.chat.chatdetails.messagelist.d> emptyList;
            if (list2 == null) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = list2.iterator();
            while (true) {
                boolean z9 = false;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                Message message = (Message) next;
                String content = message.getContent();
                if ((!(content == null || content.length() == 0) || (message.getAttachments().isEmpty() ^ true)) ? true : true) {
                    arrayList.add(next);
                }
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            int i4 = 0;
            for (Object obj2 : arrayList) {
                int i10 = i4 + 1;
                if (i4 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                Message message2 = (Message) obj2;
                if (com.im.freechat.extend.p.y(message2)) {
                    List<Attachment> attachments = message2.getAttachments();
                    if (!(attachments instanceof Collection) || !attachments.isEmpty()) {
                        for (Attachment attachment : attachments) {
                            if (!(map == null ? MapsKt__MapsKt.emptyMap() : map).containsKey(Long.valueOf(attachment.getMediaId()))) {
                                containsKey = false;
                                break;
                            }
                        }
                    }
                    containsKey = true;
                } else {
                    containsKey = (map == null ? MapsKt__MapsKt.emptyMap() : map).containsKey(Long.valueOf(message2.getMessageId()));
                }
                List<Attachment> attachments2 = message2.getAttachments();
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(attachments2, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
                for (Attachment attachment2 : attachments2) {
                    arrayList3.add(Boolean.valueOf((map == null ? MapsKt__MapsKt.emptyMap() : map).containsKey(Long.valueOf(attachment2.getMediaId()))));
                }
                Object[] array = arrayList3.toArray(new Boolean[0]);
                Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                Boolean[] boolArr = (Boolean[]) array;
                int i11 = i4 - 1;
                boolean areEqual = i11 >= 0 ? Intrinsics.areEqual(((Message) arrayList.get(i11)).getSender(), message2.getSender()) : false;
                if (list != null) {
                    Iterator<T> it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        if (Intrinsics.areEqual(((com.im.freechat.ui.chat.chatdetails.messagelist.d) obj).i(), message2)) {
                            break;
                        }
                    }
                    com.im.freechat.ui.chat.chatdetails.messagelist.d dVar2 = (com.im.freechat.ui.chat.chatdetails.messagelist.d) obj;
                    if (dVar2 != null) {
                        dVar = dVar2.j() == containsKey && Arrays.equals(dVar2.h(), boolArr) && dVar2.l() == areEqual ? dVar2 : null;
                        if (dVar != null) {
                            arrayList2.add(dVar);
                            i4 = i10;
                        }
                    }
                }
                dVar = new com.im.freechat.ui.chat.chatdetails.messagelist.d(message2, containsKey, areEqual, boolArr, false, 16, null);
                arrayList2.add(dVar);
                i4 = i10;
            }
            return arrayList2;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$unpinMessage$1", f = "ChatDetailsViewModel.kt", i = {}, l = {556}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class h0 extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42497a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h0(Continuation<? super h0> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new h0(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((h0) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42497a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.messages.o oVar = ChatDetailsViewModel.this.f42413w;
                Integer boxInt = Boxing.boxInt(ChatDetailsViewModel.this.K);
                this.f42497a = 1;
                a10 = oVar.a(boxInt, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            ChatDetailsViewModel chatDetailsViewModel = ChatDetailsViewModel.this;
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                chatDetailsViewModel.h(b.s.D0, new Object[0]);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/DownloadInfo;", "it", "", "a", "(Lcom/im/freechat/shared/entities/DownloadInfo;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class i extends Lambda implements Function1<DownloadInfo, Unit> {

        /* renamed from: b */
        final /* synthetic */ VideoAttachment f42500b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(VideoAttachment videoAttachment) {
            super(1);
            ChatDetailsViewModel.this = r1;
            this.f42500b = videoAttachment;
        }

        public final void a(@m8.h DownloadInfo downloadInfo) {
            ChatDetailsViewModel.this.e(Directions.OPEN_FULLSCREEN, BundleKt.bundleOf(TuplesKt.to(y1.a(), Long.valueOf(this.f42500b.getMediaId()))));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(DownloadInfo downloadInfo) {
            a(downloadInfo);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class j extends Lambda implements Function0<Unit> {

        /* renamed from: a */
        public static final j f42501a = new j();

        j() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$followContact$1", f = "ChatDetailsViewModel.kt", i = {}, l = {639}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class k extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42502a;

        /* renamed from: b */
        private /* synthetic */ Object f42503b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(Continuation<? super k> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            k kVar = new k(continuation);
            kVar.f42503b = obj;
            return kVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((k) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            ChatDetailsViewModel chatDetailsViewModel;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42502a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.s0 s0Var = (kotlinx.coroutines.s0) this.f42503b;
                UserModel K0 = ChatDetailsViewModel.this.K0();
                if (K0 != null) {
                    ChatDetailsViewModel chatDetailsViewModel2 = ChatDetailsViewModel.this;
                    com.im.freechat.domain.usecase.contact.b bVar = chatDetailsViewModel2.f42403n;
                    Integer boxInt = Boxing.boxInt(K0.getUserId());
                    this.f42503b = chatDetailsViewModel2;
                    this.f42502a = 1;
                    a10 = bVar.a(boxInt, this);
                    if (a10 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    chatDetailsViewModel = chatDetailsViewModel2;
                } else {
                    ChatDetailsViewModel.this.h(b.s.f2383s1, new Object[0]);
                    return Unit.INSTANCE;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                chatDetailsViewModel = (ChatDetailsViewModel) this.f42503b;
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            if (Result.m77isSuccessimpl(a10)) {
                Unit unit = (Unit) a10;
                chatDetailsViewModel.h(b.s.f2413v1, new Object[0]);
            }
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                chatDetailsViewModel.h(b.s.f2413v1, new Object[0]);
            }
            Result.m69boximpl(a10);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$getKeyboardHeight$1", f = "ChatDetailsViewModel.kt", i = {}, l = {746}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class l extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Integer>, Object> {

        /* renamed from: a */
        int f42505a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(Continuation<? super l> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new l(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Integer> continuation) {
            return ((l) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42505a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.currentuser.b bVar = ChatDetailsViewModel.this.A;
                Unit unit = Unit.INSTANCE;
                this.f42505a = 1;
                a10 = bVar.a(unit, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            if (Result.m76isFailureimpl(a10)) {
                a10 = null;
            }
            Integer num = (Integer) a10;
            return Boxing.boxInt(num != null ? num.intValue() : 0);
        }
    }

    /* compiled from: Timer.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"kotlin/concurrent/TimersKt$timerTask$1", "Ljava/util/TimerTask;", "", "run", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class m extends TimerTask {
        public m() {
            ChatDetailsViewModel.this = r1;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            LinkedHashMap linkedHashMap;
            MutableLiveData<Map<TypingEvent, Long>> O0 = ChatDetailsViewModel.this.O0();
            Map<TypingEvent, Long> value = ChatDetailsViewModel.this.O0().getValue();
            if (value != null) {
                Intrinsics.checkNotNullExpressionValue(value, "value");
                linkedHashMap = new LinkedHashMap();
                for (Map.Entry<TypingEvent, Long> entry : value.entrySet()) {
                    if (SystemClock.elapsedRealtime() - entry.getValue().longValue() < 3000) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
            } else {
                linkedHashMap = null;
            }
            O0.postValue(linkedHashMap);
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\b\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\n¢\u0006\u0004\b\b\u0010\t"}, d2 = {"", "<anonymous parameter 0>", "", "code", "Ljava/io/File;", "file", "seconds", "", "a", "(ZILjava/io/File;I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class n extends Lambda implements Function4<Boolean, Integer, File, Integer, Unit> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n() {
            super(4);
            ChatDetailsViewModel.this = r1;
        }

        public final void a(boolean z9, int i4, @m8.h File file, int i10) {
            if (i4 == 0) {
                if (file != null) {
                    ChatDetailsViewModel chatDetailsViewModel = ChatDetailsViewModel.this;
                    Uri fromFile = Uri.fromFile(file);
                    Intrinsics.checkNotNullExpressionValue(fromFile, "fromFile(this)");
                    chatDetailsViewModel.y1(fromFile);
                }
            } else if (i4 == 1) {
                ChatDetailsViewModel chatDetailsViewModel2 = ChatDetailsViewModel.this;
                chatDetailsViewModel2.h(b.s.L0, Integer.valueOf(chatDetailsViewModel2.f42395j.c() / 1000));
            } else if (i4 != 2) {
            } else {
                ChatDetailsViewModel.this.h(b.s.f2239e0, new Object[0]);
            }
        }

        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool, Integer num, File file, Integer num2) {
            a(bool.booleanValue(), num.intValue(), file, num2.intValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$init$3", f = "ChatDetailsViewModel.kt", i = {}, l = {357}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class o extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42509a;

        /* renamed from: c */
        final /* synthetic */ List<Long> f42511c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(List<Long> list, Continuation<? super o> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
            this.f42511c = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new o(this.f42511c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((o) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42509a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.messages.b bVar = ChatDetailsViewModel.this.f42391h;
                List<Long> list = this.f42511c;
                this.f42509a = 1;
                a10 = bVar.a(list, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            ChatDetailsViewModel chatDetailsViewModel = ChatDetailsViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                chatDetailsViewModel.E1((List) a10);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$mentionHints$1$1", f = "ChatDetailsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class p extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42512a;

        /* compiled from: Timer.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"kotlin/concurrent/TimersKt$timerTask$1", "Ljava/util/TimerTask;", "", "run", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class a extends TimerTask {

            /* renamed from: a */
            final /* synthetic */ ChatDetailsViewModel f42514a;

            public a(ChatDetailsViewModel chatDetailsViewModel) {
                this.f42514a = chatDetailsViewModel;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                this.f42514a.Z0();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(Continuation<? super p> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new p(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((p) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f42512a == 0) {
                ResultKt.throwOnFailure(obj);
                Function1<Unit, Unit> L0 = ChatDetailsViewModel.this.L0();
                Unit unit = Unit.INSTANCE;
                L0.invoke(unit);
                Timer Q0 = ChatDetailsViewModel.this.Q0();
                if (Q0 != null) {
                    Q0.cancel();
                }
                ChatDetailsViewModel chatDetailsViewModel = ChatDetailsViewModel.this;
                Timer timer = new Timer();
                timer.schedule(new a(ChatDetailsViewModel.this), 3000L);
                chatDetailsViewModel.D1(timer);
                return unit;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$mentionHints$1$2", f = "ChatDetailsViewModel.kt", i = {}, l = {com.google.android.exoplayer2.extractor.ts.h0.I}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class q extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42515a;

        /* renamed from: c */
        final /* synthetic */ String f42517c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(String str, Continuation<? super q> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
            this.f42517c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new q(this.f42517c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((q) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42515a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.messages.p pVar = ChatDetailsViewModel.this.f42415y;
                int i10 = ChatDetailsViewModel.this.K;
                String it = this.f42517c;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                p.a aVar = new p.a(i10, it);
                this.f42515a = 1;
                if (pVar.a(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "connected", "synchronizing", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;", "a", "(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class r extends Lambda implements Function2<Boolean, Boolean, NetworkState> {

        /* renamed from: a */
        public static final r f42518a = new r();

        r() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: a */
        public final NetworkState invoke(@m8.h Boolean bool, @m8.h Boolean bool2) {
            Boolean bool3 = Boolean.TRUE;
            return Intrinsics.areEqual(bool2, bool3) ? NetworkState.SYNCHRONIZING : Intrinsics.areEqual(bool, bool3) ? NetworkState.CONNECTED : NetworkState.RECONNECTING;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$onFinishTyping$1", f = "ChatDetailsViewModel.kt", i = {}, l = {314}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class s extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42519a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        s(Continuation<? super s> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new s(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((s) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42519a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Timer Q0 = ChatDetailsViewModel.this.Q0();
                if (Q0 != null) {
                    Q0.cancel();
                }
                ChatDetailsViewModel.this.D1(null);
                com.im.freechat.domain.usecase.chat.f fVar = ChatDetailsViewModel.this.f42411u;
                Integer boxInt = Boxing.boxInt(ChatDetailsViewModel.this.K);
                this.f42519a = 1;
                if (fVar.a(boxInt, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$pinMessage$1", f = "ChatDetailsViewModel.kt", i = {}, l = {550}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class t extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42521a;

        /* renamed from: c */
        final /* synthetic */ Message f42523c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t(Message message, Continuation<? super t> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
            this.f42523c = message;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new t(this.f42523c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((t) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42521a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.messages.c cVar = ChatDetailsViewModel.this.f42412v;
                Message message = this.f42523c;
                this.f42521a = 1;
                a10 = cVar.a(message, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            ChatDetailsViewModel chatDetailsViewModel = ChatDetailsViewModel.this;
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                chatDetailsViewModel.h(b.s.D0, new Object[0]);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$readMessage$1", f = "ChatDetailsViewModel.kt", i = {}, l = {633}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class u extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42524a;

        /* renamed from: c */
        final /* synthetic */ com.im.freechat.ui.chat.chatdetails.messagelist.d f42526c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        u(com.im.freechat.ui.chat.chatdetails.messagelist.d dVar, Continuation<? super u> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
            this.f42526c = dVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new u(this.f42526c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((u) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42524a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                if (ChatDetailsViewModel.this.f42384d0.getValue() != NetworkState.RECONNECTING) {
                    com.im.freechat.domain.usecase.messages.d dVar = ChatDetailsViewModel.this.F;
                    Message i10 = this.f42526c.i();
                    this.f42524a = 1;
                    if (dVar.a(i10, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$resendMessage$1", f = "ChatDetailsViewModel.kt", i = {}, l = {477}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class v extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42527a;

        /* renamed from: c */
        final /* synthetic */ long f42529c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        v(long j4, Continuation<? super v> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
            this.f42529c = j4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new v(this.f42529c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((v) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42527a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.messages.g gVar = ChatDetailsViewModel.this.H;
                Long boxLong = Boxing.boxLong(this.f42529c);
                this.f42527a = 1;
                if (gVar.a(boxLong, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$saveMessage$1", f = "ChatDetailsViewModel.kt", i = {}, l = {562}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class w extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42530a;

        /* renamed from: c */
        final /* synthetic */ List<Message> f42532c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        w(List<Message> list, Continuation<? super w> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
            this.f42532c = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new w(this.f42532c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((w) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            int collectionSizeOrDefault;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42530a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.messages.a aVar = ChatDetailsViewModel.this.C;
                List<Message> list = this.f42532c;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (Message message : list) {
                    arrayList.add(Boxing.boxLong(message.getMessageId()));
                }
                this.f42530a = 1;
                a10 = aVar.a(arrayList, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            ChatDetailsViewModel chatDetailsViewModel = ChatDetailsViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                Unit unit = (Unit) a10;
                chatDetailsViewModel.h(b.s.f2307k7, new Object[0]);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00002\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "Lcom/im/freechat/shared/entities/message/Message;", "messages", "", s2.d.f93273b, "a", "(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class x extends Lambda implements Function2<List<? extends Message>, String, List<? extends Message>> {

        /* renamed from: a */
        public static final x f42533a = new x();

        x() {
            super(2);
        }

        /* JADX WARN: Removed duplicated region for block: B:128:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:158:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:187:0x00f6  */
        /* JADX WARN: Removed duplicated region for block: B:193:0x00f9 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:195:0x001a A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:208:0x00ed A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:211:0x0083 A[SYNTHETIC] */
        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.util.List<com.im.freechat.shared.entities.message.Message> invoke(@m8.h java.util.List<com.im.freechat.shared.entities.message.Message> r11, @m8.h java.lang.String r12) {
            /*
                Method dump skipped, instructions count: 256
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel.x.invoke(java.util.List, java.lang.String):java.util.List");
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$sendGiphySticker$1", f = "ChatDetailsViewModel.kt", i = {}, l = {471}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class y extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42534a;

        /* renamed from: c */
        final /* synthetic */ String f42536c;

        /* renamed from: d */
        final /* synthetic */ Size f42537d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        y(String str, Size size, Continuation<? super y> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
            this.f42536c = str;
            this.f42537d = size;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new y(this.f42536c, this.f42537d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((y) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42534a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                z1 value = ChatDetailsViewModel.this.y0().getValue();
                Message i10 = value != null ? value.i() : null;
                z1 value2 = ChatDetailsViewModel.this.y0().getValue();
                if (!((value2 != null ? value2.j() : null) == Message.ExtraMessageType.QUOTE)) {
                    i10 = null;
                }
                Long boxLong = i10 != null ? Boxing.boxLong(i10.getMessageId()) : null;
                if (boxLong != null) {
                    ChatDetailsViewModel.this.A1(null);
                }
                com.im.freechat.domain.usecase.messages.i iVar = ChatDetailsViewModel.this.f42409s;
                i.a aVar = new i.a(ChatDetailsViewModel.this.K, this.f42536c, this.f42537d.getWidth(), this.f42537d.getHeight(), boxLong);
                this.f42534a = 1;
                if (iVar.a(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$sendMessage$1", f = "ChatDetailsViewModel.kt", i = {}, l = {496, TypedValues.Position.TYPE_PERCENT_Y}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class z extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        Object f42538a;

        /* renamed from: b */
        Object f42539b;

        /* renamed from: c */
        int f42540c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        z(Continuation<? super z> continuation) {
            super(2, continuation);
            ChatDetailsViewModel.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new z(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((z) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:129:0x0182 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:130:0x0183  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x0072  */
        /* JADX WARN: Type inference failed for: r9v10, types: [java.util.List] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:128:0x0180 -> B:85:0x006c). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r25) {
            /*
                Method dump skipped, instructions count: 395
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel.z.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public ChatDetailsViewModel(@m8.g com.im.freechat.domain.usecase.messages.k subscribeChatMessagesInteractor, @m8.g com.im.freechat.domain.usecase.chat.r subscribeChatInteractor, @m8.g com.im.freechat.domain.usecase.auth.e listenConnectionStateInteractor, @m8.g com.im.freechat.domain.usecase.chat.e deleteChatByIdInteractor, @m8.g com.im.freechat.domain.usecase.messages.j sendMessageInteractor, @m8.g com.im.freechat.domain.usecase.messages.b getMessagesByIdInteractor, @m8.g com.im.freechat.domain.usecase.messages.n subscribePinnedMessageByChatIdInteractor, @m8.g com.im.freechat.media.audio.c audioRecorder, @m8.g com.im.freechat.domain.usecase.chat.a clearHistoryInteractor, @m8.g p4.e playerUtil, @m8.g com.im.freechat.domain.usecase.members.h subscribeChatMembersInteractor, @m8.g com.im.freechat.domain.usecase.contact.b followContactInteractor, @m8.g com.im.freechat.domain.usecase.contact.f removeFriendInteractor, @m8.g com.im.freechat.domain.usecase.contact.a blockContactInteractor, @m8.g com.im.freechat.domain.usecase.contact.j unblockContactInteractor, @m8.g com.im.freechat.domain.h fileUtility, @m8.g com.im.freechat.domain.usecase.messages.i sendGiphyStickerInteractor, @m8.g com.im.freechat.domain.usecase.chat.q startTypingInteractor, @m8.g com.im.freechat.domain.usecase.chat.f endTypingInteractor, @m8.g com.im.freechat.domain.usecase.messages.c pinMessageInteractor, @m8.g com.im.freechat.domain.usecase.messages.o unpinMessageInteractor, @m8.g com.im.freechat.domain.usecase.chat.j listenTypingInteractor, @m8.g com.im.freechat.domain.usecase.messages.p updateDraftMessageInteractor, @m8.g com.im.freechat.domain.usecase.currentuser.h setKeyboardHeightSettingInteractor, @m8.g com.im.freechat.domain.usecase.currentuser.b getKeyboardHeightSettingInteractor, @m8.g com.im.freechat.utils.f downloadUtil, @m8.g com.im.freechat.domain.usecase.messages.a addToFavoritesInteractor, @m8.g com.im.freechat.domain.usecase.messages.f removeMessagesForMyselfInteractor, @m8.g com.im.freechat.domain.usecase.messages.e removeMessagesForEveryoneInteractor, @m8.g com.im.freechat.domain.usecase.messages.d readMessageByIdInteractor, @m8.g com.im.freechat.domain.usecase.chat.s subscribeChatsSyncStateInteractor, @m8.g com.im.freechat.domain.usecase.messages.g resendMessageInteractor, @m8.g com.im.freechat.domain.n notificationManager, @m8.g Resources resources) {
        Map emptyMap;
        List emptyList;
        Map emptyMap2;
        Intrinsics.checkNotNullParameter(subscribeChatMessagesInteractor, "subscribeChatMessagesInteractor");
        Intrinsics.checkNotNullParameter(subscribeChatInteractor, "subscribeChatInteractor");
        Intrinsics.checkNotNullParameter(listenConnectionStateInteractor, "listenConnectionStateInteractor");
        Intrinsics.checkNotNullParameter(deleteChatByIdInteractor, "deleteChatByIdInteractor");
        Intrinsics.checkNotNullParameter(sendMessageInteractor, "sendMessageInteractor");
        Intrinsics.checkNotNullParameter(getMessagesByIdInteractor, "getMessagesByIdInteractor");
        Intrinsics.checkNotNullParameter(subscribePinnedMessageByChatIdInteractor, "subscribePinnedMessageByChatIdInteractor");
        Intrinsics.checkNotNullParameter(audioRecorder, "audioRecorder");
        Intrinsics.checkNotNullParameter(clearHistoryInteractor, "clearHistoryInteractor");
        Intrinsics.checkNotNullParameter(playerUtil, "playerUtil");
        Intrinsics.checkNotNullParameter(subscribeChatMembersInteractor, "subscribeChatMembersInteractor");
        Intrinsics.checkNotNullParameter(followContactInteractor, "followContactInteractor");
        Intrinsics.checkNotNullParameter(removeFriendInteractor, "removeFriendInteractor");
        Intrinsics.checkNotNullParameter(blockContactInteractor, "blockContactInteractor");
        Intrinsics.checkNotNullParameter(unblockContactInteractor, "unblockContactInteractor");
        Intrinsics.checkNotNullParameter(fileUtility, "fileUtility");
        Intrinsics.checkNotNullParameter(sendGiphyStickerInteractor, "sendGiphyStickerInteractor");
        Intrinsics.checkNotNullParameter(startTypingInteractor, "startTypingInteractor");
        Intrinsics.checkNotNullParameter(endTypingInteractor, "endTypingInteractor");
        Intrinsics.checkNotNullParameter(pinMessageInteractor, "pinMessageInteractor");
        Intrinsics.checkNotNullParameter(unpinMessageInteractor, "unpinMessageInteractor");
        Intrinsics.checkNotNullParameter(listenTypingInteractor, "listenTypingInteractor");
        Intrinsics.checkNotNullParameter(updateDraftMessageInteractor, "updateDraftMessageInteractor");
        Intrinsics.checkNotNullParameter(setKeyboardHeightSettingInteractor, "setKeyboardHeightSettingInteractor");
        Intrinsics.checkNotNullParameter(getKeyboardHeightSettingInteractor, "getKeyboardHeightSettingInteractor");
        Intrinsics.checkNotNullParameter(downloadUtil, "downloadUtil");
        Intrinsics.checkNotNullParameter(addToFavoritesInteractor, "addToFavoritesInteractor");
        Intrinsics.checkNotNullParameter(removeMessagesForMyselfInteractor, "removeMessagesForMyselfInteractor");
        Intrinsics.checkNotNullParameter(removeMessagesForEveryoneInteractor, "removeMessagesForEveryoneInteractor");
        Intrinsics.checkNotNullParameter(readMessageByIdInteractor, "readMessageByIdInteractor");
        Intrinsics.checkNotNullParameter(subscribeChatsSyncStateInteractor, "subscribeChatsSyncStateInteractor");
        Intrinsics.checkNotNullParameter(resendMessageInteractor, "resendMessageInteractor");
        Intrinsics.checkNotNullParameter(notificationManager, "notificationManager");
        Intrinsics.checkNotNullParameter(resources, "resources");
        this.f42381c = subscribeChatMessagesInteractor;
        this.f42383d = subscribeChatInteractor;
        this.f42385e = listenConnectionStateInteractor;
        this.f42387f = deleteChatByIdInteractor;
        this.f42389g = sendMessageInteractor;
        this.f42391h = getMessagesByIdInteractor;
        this.f42393i = subscribePinnedMessageByChatIdInteractor;
        this.f42395j = audioRecorder;
        this.f42397k = clearHistoryInteractor;
        this.f42399l = playerUtil;
        this.f42401m = subscribeChatMembersInteractor;
        this.f42403n = followContactInteractor;
        this.f42405o = removeFriendInteractor;
        this.f42406p = blockContactInteractor;
        this.f42407q = unblockContactInteractor;
        this.f42408r = fileUtility;
        this.f42409s = sendGiphyStickerInteractor;
        this.f42410t = startTypingInteractor;
        this.f42411u = endTypingInteractor;
        this.f42412v = pinMessageInteractor;
        this.f42413w = unpinMessageInteractor;
        this.f42414x = listenTypingInteractor;
        this.f42415y = updateDraftMessageInteractor;
        this.f42416z = setKeyboardHeightSettingInteractor;
        this.A = getKeyboardHeightSettingInteractor;
        this.B = downloadUtil;
        this.C = addToFavoritesInteractor;
        this.D = removeMessagesForMyselfInteractor;
        this.E = removeMessagesForEveryoneInteractor;
        this.F = readMessageByIdInteractor;
        this.G = subscribeChatsSyncStateInteractor;
        this.H = resendMessageInteractor;
        this.I = notificationManager;
        this.J = resources;
        Boolean bool = Boolean.FALSE;
        this.L = new MutableLiveData<>(bool);
        emptyMap = MapsKt__MapsKt.emptyMap();
        MutableLiveData<Map<Long, Boolean>> mutableLiveData = new MutableLiveData<>(emptyMap);
        this.M = mutableLiveData;
        MutableLiveData<Chat> mutableLiveData2 = new MutableLiveData<>();
        this.N = mutableLiveData2;
        MutableLiveData<List<ChatMember>> mutableLiveData3 = new MutableLiveData<>();
        this.O = mutableLiveData3;
        MutableLiveData<String> mutableLiveData4 = new MutableLiveData<>();
        this.P = mutableLiveData4;
        this.R = com.im.freechat.domain.f.c(1000L, ViewModelKt.getViewModelScope(this), new b0(null));
        LiveData<String> map = Transformations.map(mutableLiveData4, new Function() { // from class: com.im.freechat.ui.chat.chatdetails.q1
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                String Y0;
                Y0 = ChatDetailsViewModel.Y0(ChatDetailsViewModel.this, (String) obj);
                return Y0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(typedText) {\n       …        } else null\n    }");
        this.T = map;
        LiveData<ChatMember> map2 = Transformations.map(mutableLiveData3, u1.f42668a);
        Intrinsics.checkNotNullExpressionValue(map2, "map(chatMembers) {\n     …act.isCurrentUser }\n    }");
        this.U = map2;
        this.V = o4.m.n(mutableLiveData2, map2, b.f42425a);
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        MutableLiveData<List<Uri>> mutableLiveData5 = new MutableLiveData<>(emptyList);
        this.W = mutableLiveData5;
        LiveData<ChosenAttachment> map3 = Transformations.map(mutableLiveData5, new Function() { // from class: com.im.freechat.ui.chat.chatdetails.r1
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                ChosenAttachment d02;
                d02 = ChatDetailsViewModel.d0(ChatDetailsViewModel.this, (List) obj);
                return d02;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map3, "map(mediaChosen) {\n     …nt(it.toString()) }\n    }");
        this.X = map3;
        emptyMap2 = MapsKt__MapsKt.emptyMap();
        MutableLiveData<Map<TypingEvent, Long>> mutableLiveData6 = new MutableLiveData<>(emptyMap2);
        this.Y = mutableLiveData6;
        LiveData map4 = Transformations.map(mutableLiveData6, w1.f42674a);
        Intrinsics.checkNotNullExpressionValue(map4, "map(typingEvents) {\n    …p { it.key.userId }\n    }");
        LiveData<List<Integer>> distinctUntilChanged = Transformations.distinctUntilChanged(map4);
        Intrinsics.checkNotNullExpressionValue(distinctUntilChanged, "distinctUntilChanged(this)");
        this.Z = distinctUntilChanged;
        LiveData map5 = Transformations.map(mutableLiveData3, v1.f42671a);
        Intrinsics.checkNotNullExpressionValue(map5, "map(chatMembers) { list …ng.MAX_VALUE } ?: 1\n    }");
        LiveData<Integer> distinctUntilChanged2 = Transformations.distinctUntilChanged(map5);
        Intrinsics.checkNotNullExpressionValue(distinctUntilChanged2, "distinctUntilChanged(this)");
        this.f42379a0 = distinctUntilChanged2;
        MutableLiveData<Boolean> mutableLiveData7 = new MutableLiveData<>(bool);
        this.f42380b0 = mutableLiveData7;
        MutableLiveData<Boolean> mutableLiveData8 = new MutableLiveData<>(bool);
        this.f42382c0 = mutableLiveData8;
        LiveData<NetworkState> n9 = o4.m.n(mutableLiveData7, mutableLiveData8, r.f42518a);
        this.f42384d0 = n9;
        this.f42386e0 = o4.m.l(distinctUntilChanged, distinctUntilChanged2, mutableLiveData2, n9, new c());
        this.f42388f0 = new MutableLiveData<>();
        this.f42390g0 = new MutableLiveData<>();
        MutableLiveData<List<Message>> mutableLiveData9 = new MutableLiveData<>();
        this.f42392h0 = mutableLiveData9;
        LiveData<List<com.im.freechat.ui.chat.chatdetails.messagelist.d>> A = o4.m.A(mutableLiveData, mutableLiveData9, h.f42496a);
        this.f42394i0 = A;
        MutableLiveData<String> mutableLiveData10 = new MutableLiveData<>();
        this.f42396j0 = mutableLiveData10;
        this.f42398k0 = o4.m.n(mutableLiveData9, mutableLiveData10, x.f42533a);
        LiveData<Integer> map6 = Transformations.map(A, s1.f42662a);
        Intrinsics.checkNotNullExpressionValue(map6, "map(displayMessageList) …READ\n        } ?: 0\n    }");
        this.f42400l0 = map6;
        LiveData<Integer> map7 = Transformations.map(A, t1.f42665a);
        Intrinsics.checkNotNullExpressionValue(map7, "map(displayMessageList) …HAVE_READ\n        }\n    }");
        this.f42402m0 = map7;
        this.f42404n0 = new Observer() { // from class: com.im.freechat.ui.chat.chatdetails.x1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatDetailsViewModel.j1(ChatDetailsViewModel.this, obj);
            }
        };
    }

    public final void E1(List<Message> list) {
        Object first;
        Object first2;
        if (!list.isEmpty()) {
            MutableLiveData<z1> mutableLiveData = this.f42388f0;
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
            Message.ExtraMessageType extraMessageType = Message.ExtraMessageType.FORWARD;
            first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
            mutableLiveData.setValue(new z1((Message) first, extraMessageType, Integer.valueOf(((Message) first2).getChatId()), list.subList(1, list.size())));
        }
    }

    private final j2 I1(long j4) {
        return c(new c0(null));
    }

    public static final List K1(Map it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : it.entrySet()) {
            if (((Number) entry.getValue()).longValue() - SystemClock.elapsedRealtime() < 3000) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            arrayList.add(Integer.valueOf(((TypingEvent) entry2.getKey()).getUserId()));
        }
        return arrayList;
    }

    public static final Integer O1(List list) {
        int i4 = 0;
        if (list != null && !list.isEmpty()) {
            Iterator it = list.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                com.im.freechat.ui.chat.chatdetails.messagelist.d dVar = (com.im.freechat.ui.chat.chatdetails.messagelist.d) it.next();
                if (((dVar.i().getSender().isCurrentUser() || dVar.i().getMessageStatus() == Message.MessageStatus.HAVE_READ) ? false : true) && (i10 = i10 + 1) < 0) {
                    CollectionsKt__CollectionsKt.throwCountOverflow();
                }
            }
            i4 = i10;
        }
        return Integer.valueOf(i4);
    }

    private final void P1() {
    }

    public static final Integer X0(List list) {
        int i4;
        boolean z9;
        if (list != null) {
            ListIterator listIterator = list.listIterator(list.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    i4 = -1;
                    break;
                }
                com.im.freechat.ui.chat.chatdetails.messagelist.d dVar = (com.im.freechat.ui.chat.chatdetails.messagelist.d) listIterator.previous();
                if (dVar.i().getSender().isCurrentUser() || dVar.i().getMessageStatus() == Message.MessageStatus.HAVE_READ) {
                    z9 = false;
                    continue;
                } else {
                    z9 = true;
                    continue;
                }
                if (z9) {
                    i4 = listIterator.nextIndex();
                    break;
                }
            }
            return Integer.valueOf(i4);
        }
        return null;
    }

    public static final String Y0(ChatDetailsViewModel this$0, String str) {
        boolean isBlank;
        boolean contains$default;
        boolean startsWith$default;
        int lastIndexOf$default;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.N.getValue() == null || str == null) {
            return null;
        }
        if (str.length() > 0) {
            Chat s02 = this$0.s0();
            if (!Intrinsics.areEqual(str, s02 != null ? s02.getDraftMessage() : null)) {
                this$0.c(new p(null));
            }
        }
        this$0.c(new q(str, null));
        Chat value = this$0.N.getValue();
        if ((value != null ? value.getType() : null) == Chat.Type.GROUP) {
            isBlank = StringsKt__StringsJVMKt.isBlank(str);
            if (isBlank) {
                return null;
            }
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "@", false, 2, (Object) null);
            if (contains$default) {
                String str2 = null;
                for (String str3 : new Regex("\\s+").split(str, 0)) {
                    startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str3, "@", false, 2, null);
                    if (startsWith$default) {
                        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) str, str3, 0, false, 6, (Object) null);
                        if (lastIndexOf$default + str3.length() == this$0.S) {
                            str2 = str3;
                        }
                    }
                }
                return str2;
            }
            return null;
        }
        return null;
    }

    public static final ChosenAttachment d0(ChatDetailsViewModel this$0, List it) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) it);
        Uri uri = (Uri) firstOrNull;
        if (uri != null) {
            com.im.freechat.domain.h hVar = this$0.f42408r;
            String uri2 = uri.toString();
            Intrinsics.checkNotNullExpressionValue(uri2, "it.toString()");
            return hVar.f(uri2);
        }
        return null;
    }

    public final Map<Integer, String> f0(String str) {
        Map<Integer, String> map;
        boolean contains$default;
        Map<Integer, String> emptyMap;
        if (str == null) {
            emptyMap = MapsKt__MapsKt.emptyMap();
            return emptyMap;
        }
        List<UserModel> u02 = u0();
        ArrayList arrayList = new ArrayList();
        for (UserModel userModel : u02) {
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) ('@' + userModel.getDisplayName()), false, 2, (Object) null);
            Pair pair = contains$default ? TuplesKt.to(Integer.valueOf(userModel.getUserId()), userModel.getDisplayName()) : null;
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        map = MapsKt__MapsKt.toMap(arrayList);
        return map;
    }

    public static final Integer f1(List list) {
        int i4 = 1;
        if (list != null) {
            if (list.isEmpty()) {
                i4 = 0;
            } else {
                Iterator it = list.iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    if ((((ChatMember) it.next()).getContact().getLastOnline() == Long.MAX_VALUE) && (i10 = i10 + 1) < 0) {
                        CollectionsKt__CollectionsKt.throwCountOverflow();
                    }
                }
                i4 = i10;
            }
        }
        return Integer.valueOf(i4);
    }

    public static final ChatMember i0(List it) {
        Object obj;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Iterator it2 = it.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((ChatMember) obj).getContact().isCurrentUser()) {
                break;
            }
        }
        return (ChatMember) obj;
    }

    public static /* synthetic */ void i1(ChatDetailsViewModel chatDetailsViewModel, long j4, long j10, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            j10 = 0;
        }
        chatDetailsViewModel.h1(j4, j10, (i4 & 4) != 0 ? false : z9);
    }

    public static final void j1(ChatDetailsViewModel this$0, Object obj) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.P1();
    }

    public final void k1(TypingEvent typingEvent) {
        UserModel contact;
        boolean z9 = true;
        if (typingEvent.getStart()) {
            ChatMember value = this.U.getValue();
            if ((value == null || (contact = value.getContact()) == null || typingEvent.getUserId() != contact.getUserId()) ? false : false) {
                return;
            }
            MutableLiveData<Map<TypingEvent, Long>> mutableLiveData = this.Y;
            Map<TypingEvent, Long> value2 = mutableLiveData.getValue();
            mutableLiveData.postValue(value2 != null ? MapsKt__MapsKt.plus(value2, new Pair(typingEvent, Long.valueOf(SystemClock.elapsedRealtime()))) : null);
            return;
        }
        MutableLiveData<Map<TypingEvent, Long>> mutableLiveData2 = this.Y;
        Map<TypingEvent, Long> value3 = mutableLiveData2.getValue();
        if (value3 != null) {
            r2 = new LinkedHashMap<>();
            for (Map.Entry<TypingEvent, Long> entry : value3.entrySet()) {
                if (typingEvent.getUserId() != entry.getKey().getUserId()) {
                    r2.put(entry.getKey(), entry.getValue());
                }
            }
        }
        mutableLiveData2.postValue(r2);
    }

    @m8.g
    public final LiveData<Integer> A0() {
        return this.f42402m0;
    }

    public final void A1(@m8.h z1 z1Var) {
        this.f42388f0.setValue(z1Var);
    }

    @m8.g
    public final MutableLiveData<Boolean> B0() {
        return this.L;
    }

    public final void B1(int i4) {
        kotlinx.coroutines.l.f(kotlinx.coroutines.t0.a(kotlinx.coroutines.i1.c()), null, null, new a0(i4, null), 3, null);
    }

    @m8.g
    public final MutableLiveData<List<Uri>> C0() {
        return this.W;
    }

    public final void C1(int i4) {
        this.S = i4;
    }

    @m8.g
    public final LiveData<String> D0() {
        return this.T;
    }

    public final void D1(@m8.h Timer timer) {
        this.Q = timer;
    }

    @m8.g
    public final MutableLiveData<List<Message>> E0() {
        return this.f42392h0;
    }

    @m8.g
    public final MutableLiveData<Message> F0() {
        return this.f42390g0;
    }

    public final void F1(@m8.g File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        this.f42395j.b(file);
    }

    @m8.g
    public final LiveData<List<Message>> G0() {
        return this.f42398k0;
    }

    public final void G1() {
        this.f42399l.r();
    }

    @m8.g
    public final MutableLiveData<String> H0() {
        return this.f42396j0;
    }

    public final void H1() {
        this.f42395j.g(false);
    }

    @m8.g
    public final MutableLiveData<Map<Long, Boolean>> I0() {
        return this.M;
    }

    public final int J0() {
        return this.S;
    }

    public final void J1(@m8.g FileAttachment fileMessage) {
        Intrinsics.checkNotNullParameter(fileMessage, "fileMessage");
        this.B.e(fileMessage, this.K, new d0(fileMessage, this), e0.f42483a);
    }

    @m8.h
    public final UserModel K0() {
        Object obj;
        Iterator<T> it = u0().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (!((UserModel) obj).isCurrentUser()) {
                break;
            }
        }
        return (UserModel) obj;
    }

    @m8.g
    public final Function1<Unit, Unit> L0() {
        return this.R;
    }

    public final void L1() {
        d(this.L, new f0(null));
    }

    @m8.g
    public final String M0(@m8.h String str) {
        return this.f42408r.d(str);
    }

    public final void M1() {
        d(this.L, new g0(null));
    }

    @m8.g
    public final MutableLiveData<String> N0() {
        return this.P;
    }

    @m8.g
    public final j2 N1() {
        return c(new h0(null));
    }

    @m8.g
    public final MutableLiveData<Map<TypingEvent, Long>> O0() {
        return this.Y;
    }

    @m8.g
    public final LiveData<List<Integer>> P0() {
        return this.Z;
    }

    @m8.h
    public final Timer Q0() {
        return this.Q;
    }

    @m8.h
    public final ChosenAttachment Q1(@m8.h Uri uri) {
        if (uri == null) {
            return null;
        }
        com.im.freechat.domain.h hVar = this.f42408r;
        String uri2 = uri.toString();
        Intrinsics.checkNotNullExpressionValue(uri2, "contentUri.toString()");
        if (hVar.b(uri2) == ChosenAttachment.FileType.IMAGE_FILE) {
            com.im.freechat.domain.h hVar2 = this.f42408r;
            String uri3 = uri.toString();
            Intrinsics.checkNotNullExpressionValue(uri3, "contentUri.toString()");
            return hVar2.f(uri3);
        }
        return null;
    }

    @m8.g
    public final LiveData<Integer> R0() {
        return this.f42400l0;
    }

    public final boolean S0() {
        UserModel contact;
        ChatMember.ManagementRole managementRole;
        ChatMember value = this.U.getValue();
        return (value == null || (contact = value.getContact()) == null || (managementRole = contact.getManagementRole()) == null || !managementRole.isSuperRole()) ? false : true;
    }

    public final void T0(int i4, @m8.g List<Long> forwardedMessageIds, long j4) {
        Intrinsics.checkNotNullParameter(forwardedMessageIds, "forwardedMessageIds");
        this.K = i4;
        this.I.b(i4);
        TimersKt.timer(null, false).scheduleAtFixedRate(new m(), 0L, 1000L);
        this.f42399l.f().observeForever(this.f42404n0);
        this.f42399l.h().observeForever(this.f42404n0);
        this.f42399l.g().observeForever(this.f42404n0);
        this.f42395j.f(new n());
        I1(j4);
        c(new o(forwardedMessageIds, null));
    }

    public final boolean U0() {
        Chat value = this.N.getValue();
        return (value != null ? value.getType() : null) == Chat.Type.CHANNEL;
    }

    public final boolean V0() {
        Chat value = this.N.getValue();
        return (value != null ? value.getType() : null) == Chat.Type.GROUP;
    }

    public final boolean W0() {
        ChatMember.Role role;
        ChatMember value = this.U.getValue();
        return (value == null || (role = value.getRole()) == null || !role.isGroupAdmin()) ? false : true;
    }

    @m8.g
    public final j2 Z0() {
        return c(new s(null));
    }

    public final void a1(@m8.g Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        MutableLiveData<List<Uri>> mutableLiveData = this.W;
        List<Uri> value = mutableLiveData.getValue();
        mutableLiveData.setValue(value != null ? CollectionsKt___CollectionsKt.plus((Collection<? extends Uri>) ((Collection<? extends Object>) value), uri) : null);
    }

    public final void b1(@m8.g UserModel contact) {
        String replace$default;
        int indexOf$default;
        Intrinsics.checkNotNullParameter(contact, "contact");
        String value = this.P.getValue();
        if (value == null) {
            value = "";
        }
        String str = value;
        String value2 = this.T.getValue();
        String replace$default2 = value2 != null ? StringsKt__StringsJVMKt.replace$default(value2, "@", "", false, 4, (Object) null) : null;
        if (replace$default2 == null || replace$default2.length() == 0) {
            replace$default = str + contact.getNickname();
        } else {
            replace$default = StringsKt__StringsJVMKt.replace$default(str, replace$default2, contact.getNickname(), false, 4, (Object) null);
        }
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) replace$default, contact.getNickname(), 0, false, 6, (Object) null);
        this.S = indexOf$default + contact.getNickname().length();
        this.P.setValue(replace$default);
    }

    public final void c1() {
        Chat s02 = s0();
        Intrinsics.checkNotNull(s02);
        if (com.im.freechat.extend.g.b(s02)) {
            return;
        }
        e(Directions.NAVIGATE_GROUP_MANAGER, BundleKt.bundleOf(TuplesKt.to(k4.b.f84734a, Integer.valueOf(this.K))));
    }

    public final void d1(@m8.g String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        e(Directions.NAVIGATE_IN_APP_BROWSER, BundleKt.bundleOf(TuplesKt.to("url", url)));
    }

    public final void e0() {
        d(this.L, new a(null));
    }

    public final void e1(int i4) {
        Pair[] pairArr = new Pair[2];
        pairArr[0] = TuplesKt.to(com.im.freechat.ui.chat.userprofile.j.f43244a, Integer.valueOf(i4));
        Chat s02 = s0();
        pairArr[1] = TuplesKt.to(com.im.freechat.ui.chat.userprofile.j.f43245b, Boolean.valueOf((s02 != null ? s02.getType() : null) == Chat.Type.SINGLE));
        e(Directions.NAVIGATE_USER_PROFILE, BundleKt.bundleOf(pairArr));
    }

    public final void g0(long j4) {
        List<Long> listOf;
        com.im.freechat.utils.f fVar = this.B;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Long.valueOf(j4));
        fVar.i(listOf);
    }

    @m8.g
    public final j2 g1(@m8.g Message message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return c(new t(message, null));
    }

    public final void h0() {
        this.f42395j.g(true);
    }

    public final void h1(long j4, long j10, boolean z9) {
    }

    public final void j0(boolean z9) {
        d(this.L, new d(z9, null));
    }

    public final void k0() {
        d(this.L, new e(null));
    }

    public final void l0(@m8.g List<Long> messageIds) {
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        d(this.L, new f(messageIds, null));
    }

    @m8.g
    public final j2 l1(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return c(new u(msg, null));
    }

    public final void m0(@m8.g List<Long> messageIds) {
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        d(this.L, new g(messageIds, null));
    }

    public final void m1() {
        Map<Long, Boolean> emptyMap;
        MutableLiveData<Map<Long, Boolean>> mutableLiveData = this.M;
        emptyMap = MapsKt__MapsKt.emptyMap();
        mutableLiveData.setValue(emptyMap);
    }

    public final void n0() {
        List<Uri> emptyList;
        MutableLiveData<List<Uri>> mutableLiveData = this.W;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        mutableLiveData.setValue(emptyList);
    }

    @m8.g
    public final j2 n1(long j4) {
        return c(new v(j4, null));
    }

    public final void o0(@m8.g VideoAttachment attachment) {
        Intrinsics.checkNotNullParameter(attachment, "attachment");
        this.B.e(attachment, this.K, new i(attachment), j.f42501a);
    }

    public final void o1(@m8.g List<? extends Attachment> attachments) {
        Intrinsics.checkNotNullParameter(attachments, "attachments");
        for (Attachment attachment : attachments) {
            this.B.k(attachment, this.K);
        }
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        this.I.d(this.K);
        MediaMetadataCompat value = this.f42399l.f().getValue();
        boolean z9 = true;
        if ((value == null || !Intrinsics.areEqual(value.getString(MediaMetadataCompat.METADATA_KEY_ALBUM), "1")) ? false : false) {
            this.f42399l.r();
        }
        this.f42399l.h().removeObserver(this.f42404n0);
        this.f42399l.f().removeObserver(this.f42404n0);
    }

    public final void p0() {
        d(this.L, new k(null));
    }

    @m8.g
    public final j2 p1(@m8.g List<Message> messages) {
        Intrinsics.checkNotNullParameter(messages, "messages");
        return c(new w(messages, null));
    }

    @m8.g
    public final LiveData<ChosenAttachment> q0() {
        return this.X;
    }

    public final void q1(long j4) {
        this.f42399l.p(j4);
    }

    @m8.g
    public final LiveData<Boolean> r0() {
        return this.V;
    }

    public final void r1(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, boolean z9) {
        int collectionSizeOrDefault;
        Set set;
        int collectionSizeOrDefault2;
        int mapCapacity;
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        Map<Long, Boolean> map = null;
        if (com.im.freechat.extend.p.y(messageWrapper.i()) && z9) {
            MutableLiveData<Map<Long, Boolean>> mutableLiveData = this.M;
            Map<Long, Boolean> value = mutableLiveData.getValue();
            if (value != null) {
                Intrinsics.checkNotNullExpressionValue(value, "value");
                List<Attachment> attachments = messageWrapper.i().getAttachments();
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(attachments, 10);
                mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault2);
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                for (Attachment attachment : attachments) {
                    linkedHashMap.put(Long.valueOf(attachment.getMediaId()), Boolean.TRUE);
                }
                map = MapsKt__MapsKt.plus(value, linkedHashMap);
            }
            mutableLiveData.setValue(map);
        } else if (com.im.freechat.extend.p.y(messageWrapper.i()) && !z9) {
            MutableLiveData<Map<Long, Boolean>> mutableLiveData2 = this.M;
            Map<Long, Boolean> value2 = mutableLiveData2.getValue();
            if (value2 != null) {
                Intrinsics.checkNotNullExpressionValue(value2, "value");
                List<Attachment> attachments2 = messageWrapper.i().getAttachments();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(attachments2, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (Attachment attachment2 : attachments2) {
                    arrayList.add(Long.valueOf(attachment2.getMediaId()));
                }
                set = CollectionsKt___CollectionsKt.toSet(arrayList);
                map = MapsKt__MapsKt.minus((Map) value2, (Iterable) set);
            }
            mutableLiveData2.setValue(map);
        } else if (z9) {
            MutableLiveData<Map<Long, Boolean>> mutableLiveData3 = this.M;
            Map<Long, Boolean> value3 = mutableLiveData3.getValue();
            if (value3 != null) {
                Intrinsics.checkNotNullExpressionValue(value3, "value");
                map = MapsKt__MapsKt.plus(value3, new Pair(Long.valueOf(messageWrapper.i().getMessageId()), Boolean.valueOf(messageWrapper.k())));
            }
            mutableLiveData3.setValue(map);
        } else if (!z9) {
            MutableLiveData<Map<Long, Boolean>> mutableLiveData4 = this.M;
            Map<Long, Boolean> value4 = mutableLiveData4.getValue();
            if (value4 != null) {
                Intrinsics.checkNotNullExpressionValue(value4, "value");
                map = MapsKt__MapsKt.minus(value4, Long.valueOf(messageWrapper.i().getMessageId()));
            }
            mutableLiveData4.setValue(map);
        }
    }

    @m8.h
    public final Chat s0() {
        return this.N.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x006d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean s1() {
        /*
            r10 = this;
            androidx.lifecycle.MutableLiveData<java.util.Map<java.lang.Long, java.lang.Boolean>> r0 = r10.M
            java.lang.Object r0 = r0.getValue()
            java.util.Map r0 = (java.util.Map) r0
            r1 = 0
            if (r0 == 0) goto L6e
            java.util.Set r0 = r0.keySet()
            boolean r2 = r0 instanceof java.util.Collection
            r3 = 1
            if (r2 == 0) goto L1b
            boolean r2 = r0.isEmpty()
            if (r2 == 0) goto L1b
            goto L6e
        L1b:
            java.util.Iterator r0 = r0.iterator()
        L1f:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L6e
            java.lang.Object r2 = r0.next()
            java.lang.Number r2 = (java.lang.Number) r2
            long r4 = r2.longValue()
            androidx.lifecycle.MutableLiveData<java.util.List<com.im.freechat.shared.entities.message.Message>> r2 = r10.f42392h0
            java.lang.Object r2 = r2.getValue()
            java.util.List r2 = (java.util.List) r2
            if (r2 == 0) goto L6a
            java.lang.String r6 = "value"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r6)
            java.util.Iterator r2 = r2.iterator()
        L42:
            boolean r6 = r2.hasNext()
            if (r6 == 0) goto L5d
            java.lang.Object r6 = r2.next()
            r7 = r6
            com.im.freechat.shared.entities.message.Message r7 = (com.im.freechat.shared.entities.message.Message) r7
            long r7 = r7.getMessageId()
            int r9 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r9 != 0) goto L59
            r7 = 1
            goto L5a
        L59:
            r7 = 0
        L5a:
            if (r7 == 0) goto L42
            goto L5e
        L5d:
            r6 = 0
        L5e:
            com.im.freechat.shared.entities.message.Message r6 = (com.im.freechat.shared.entities.message.Message) r6
            if (r6 == 0) goto L6a
            boolean r2 = com.im.freechat.extend.p.A(r6)
            if (r2 != r3) goto L6a
            r2 = 1
            goto L6b
        L6a:
            r2 = 0
        L6b:
            if (r2 == 0) goto L1f
            r1 = 1
        L6e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel.s1():boolean");
    }

    @m8.g
    public final MutableLiveData<Chat> t0() {
        return this.N;
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x00b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x009f A[EDGE_INSN: B:125:0x009f->B:109:0x009f ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean t1() {
        /*
            r11 = this;
            androidx.lifecycle.MutableLiveData<java.util.Map<java.lang.Long, java.lang.Boolean>> r0 = r11.M
            java.lang.Object r0 = r0.getValue()
            java.util.Map r0 = (java.util.Map) r0
            r1 = 0
            if (r0 == 0) goto Lb5
            androidx.lifecycle.LiveData<java.lang.Boolean> r2 = r11.V
            java.lang.Object r2 = r2.getValue()
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            r3 = 1
            if (r2 != 0) goto Lb4
            java.util.Set r0 = r0.keySet()
            boolean r2 = r0 instanceof java.util.Collection
            if (r2 == 0) goto L2b
            boolean r2 = r0.isEmpty()
            if (r2 == 0) goto L2b
        L28:
            r0 = 1
            goto Lb2
        L2b:
            java.util.Iterator r0 = r0.iterator()
        L2f:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L28
            java.lang.Object r2 = r0.next()
            java.lang.Number r2 = (java.lang.Number) r2
            long r4 = r2.longValue()
            androidx.lifecycle.MutableLiveData<java.util.List<com.im.freechat.shared.entities.message.Message>> r2 = r11.f42392h0
            java.lang.Object r2 = r2.getValue()
            java.util.List r2 = (java.util.List) r2
            if (r2 == 0) goto Lae
            java.lang.String r6 = "value"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r6)
            java.util.Iterator r2 = r2.iterator()
        L52:
            boolean r6 = r2.hasNext()
            if (r6 == 0) goto L9e
            java.lang.Object r6 = r2.next()
            r7 = r6
            com.im.freechat.shared.entities.message.Message r7 = (com.im.freechat.shared.entities.message.Message) r7
            long r8 = r7.getMessageId()
            int r10 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r10 == 0) goto L9a
            java.util.List r7 = r7.getAttachments()
            boolean r8 = r7 instanceof java.util.Collection
            if (r8 == 0) goto L77
            boolean r8 = r7.isEmpty()
            if (r8 == 0) goto L77
        L75:
            r7 = 0
            goto L95
        L77:
            java.util.Iterator r7 = r7.iterator()
        L7b:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto L75
            java.lang.Object r8 = r7.next()
            com.im.freechat.shared.entities.message.Attachment r8 = (com.im.freechat.shared.entities.message.Attachment) r8
            long r8 = r8.getMediaId()
            int r10 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r10 != 0) goto L91
            r8 = 1
            goto L92
        L91:
            r8 = 0
        L92:
            if (r8 == 0) goto L7b
            r7 = 1
        L95:
            if (r7 == 0) goto L98
            goto L9a
        L98:
            r7 = 0
            goto L9b
        L9a:
            r7 = 1
        L9b:
            if (r7 == 0) goto L52
            goto L9f
        L9e:
            r6 = 0
        L9f:
            com.im.freechat.shared.entities.message.Message r6 = (com.im.freechat.shared.entities.message.Message) r6
            if (r6 == 0) goto Lae
            com.im.freechat.shared.entities.contact.Sender r2 = r6.getSender()
            if (r2 == 0) goto Lae
            boolean r2 = r2.isCurrentUser()
            goto Laf
        Lae:
            r2 = 0
        Laf:
            if (r2 != 0) goto L2f
            r0 = 0
        Lb2:
            if (r0 == 0) goto Lb5
        Lb4:
            r1 = 1
        Lb5:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel.t1():boolean");
    }

    @m8.g
    public final List<UserModel> u0() {
        List<UserModel> emptyList;
        int collectionSizeOrDefault;
        List<ChatMember> value = this.O.getValue();
        if (value == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(value, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ChatMember chatMember : value) {
            arrayList.add(chatMember.getContact());
        }
        return arrayList;
    }

    public final boolean u1() {
        List<Message> value;
        Object obj;
        Object first;
        boolean z9;
        Map<Long, Boolean> value2 = this.M.getValue();
        if (value2 == null || value2.size() != 1 || (value = this.f42392h0.getValue()) == null) {
            return false;
        }
        Intrinsics.checkNotNullExpressionValue(value, "value");
        Iterator<T> it = value.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            long messageId = ((Message) obj).getMessageId();
            first = CollectionsKt___CollectionsKt.first(value2.keySet());
            if (messageId == ((Number) first).longValue()) {
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
        Message message = (Message) obj;
        return message != null && message.getSender().isCurrentUser() && com.im.freechat.extend.p.o(message) && !com.im.freechat.extend.p.x(message);
    }

    @m8.g
    public final LiveData<String> v0() {
        return this.f42386e0;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x0053 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean v1() {
        /*
            r4 = this;
            androidx.lifecycle.MutableLiveData<java.util.Map<java.lang.Long, java.lang.Boolean>> r0 = r4.M
            java.lang.Object r0 = r0.getValue()
            java.util.Map r0 = (java.util.Map) r0
            r1 = 0
            if (r0 == 0) goto L10
            int r0 = r0.size()
            goto L11
        L10:
            r0 = 0
        L11:
            r2 = 1
            if (r2 > r0) goto L1a
            r3 = 11
            if (r0 >= r3) goto L1a
            r0 = 1
            goto L1b
        L1a:
            r0 = 0
        L1b:
            if (r0 == 0) goto L54
            androidx.lifecycle.MutableLiveData<java.util.Map<java.lang.Long, java.lang.Boolean>> r0 = r4.M
            java.lang.Object r0 = r0.getValue()
            java.util.Map r0 = (java.util.Map) r0
            if (r0 == 0) goto L50
            java.util.Collection r0 = r0.values()
            if (r0 == 0) goto L50
            boolean r3 = r0.isEmpty()
            if (r3 == 0) goto L35
        L33:
            r0 = 1
            goto L4c
        L35:
            java.util.Iterator r0 = r0.iterator()
        L39:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L33
            java.lang.Object r3 = r0.next()
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            if (r3 == 0) goto L39
            r0 = 0
        L4c:
            if (r0 != r2) goto L50
            r0 = 1
            goto L51
        L50:
            r0 = 0
        L51:
            if (r0 == 0) goto L54
            r1 = 1
        L54:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel.v1():boolean");
    }

    @m8.g
    public final LiveData<ChatMember> w0() {
        return this.U;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x009b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x008c A[EDGE_INSN: B:115:0x008c->B:102:0x008c ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean w1() {
        /*
            r11 = this;
            androidx.lifecycle.MutableLiveData<java.util.Map<java.lang.Long, java.lang.Boolean>> r0 = r11.M
            java.lang.Object r0 = r0.getValue()
            java.util.Map r0 = (java.util.Map) r0
            r1 = 0
            if (r0 == 0) goto L9b
            java.util.Set r0 = r0.keySet()
            boolean r2 = r0 instanceof java.util.Collection
            r3 = 1
            if (r2 == 0) goto L1d
            boolean r2 = r0.isEmpty()
            if (r2 == 0) goto L1d
        L1a:
            r1 = 1
            goto L9b
        L1d:
            java.util.Iterator r0 = r0.iterator()
        L21:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L1a
            java.lang.Object r2 = r0.next()
            java.lang.Number r2 = (java.lang.Number) r2
            long r4 = r2.longValue()
            androidx.lifecycle.MutableLiveData<java.util.List<com.im.freechat.shared.entities.message.Message>> r2 = r11.f42392h0
            java.lang.Object r2 = r2.getValue()
            java.util.List r2 = (java.util.List) r2
            if (r2 == 0) goto L98
            java.util.Iterator r2 = r2.iterator()
        L3f:
            boolean r6 = r2.hasNext()
            if (r6 == 0) goto L8b
            java.lang.Object r6 = r2.next()
            r7 = r6
            com.im.freechat.shared.entities.message.Message r7 = (com.im.freechat.shared.entities.message.Message) r7
            long r8 = r7.getMessageId()
            int r10 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r10 == 0) goto L87
            java.util.List r7 = r7.getAttachments()
            boolean r8 = r7 instanceof java.util.Collection
            if (r8 == 0) goto L64
            boolean r8 = r7.isEmpty()
            if (r8 == 0) goto L64
        L62:
            r7 = 0
            goto L82
        L64:
            java.util.Iterator r7 = r7.iterator()
        L68:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto L62
            java.lang.Object r8 = r7.next()
            com.im.freechat.shared.entities.message.Attachment r8 = (com.im.freechat.shared.entities.message.Attachment) r8
            long r8 = r8.getMediaId()
            int r10 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r10 != 0) goto L7e
            r8 = 1
            goto L7f
        L7e:
            r8 = 0
        L7f:
            if (r8 == 0) goto L68
            r7 = 1
        L82:
            if (r7 == 0) goto L85
            goto L87
        L85:
            r7 = 0
            goto L88
        L87:
            r7 = 1
        L88:
            if (r7 == 0) goto L3f
            goto L8c
        L8b:
            r6 = 0
        L8c:
            com.im.freechat.shared.entities.message.Message r6 = (com.im.freechat.shared.entities.message.Message) r6
            if (r6 == 0) goto L98
            boolean r2 = com.im.freechat.extend.p.v(r6)
            if (r2 != r3) goto L98
            r2 = 1
            goto L99
        L98:
            r2 = 0
        L99:
            if (r2 != 0) goto L21
        L9b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel.w1():boolean");
    }

    @m8.g
    public final LiveData<List<com.im.freechat.ui.chat.chatdetails.messagelist.d>> x0() {
        return this.f42394i0;
    }

    @m8.g
    public final j2 x1(@m8.g String mediaId, @m8.g Size size) {
        Intrinsics.checkNotNullParameter(mediaId, "mediaId");
        Intrinsics.checkNotNullParameter(size, "size");
        return c(new y(mediaId, size, null));
    }

    @m8.g
    public final MutableLiveData<z1> y0() {
        return this.f42388f0;
    }

    public final void y1(@m8.g Uri uri) {
        List<Uri> listOf;
        Intrinsics.checkNotNullParameter(uri, "uri");
        MutableLiveData<List<Uri>> mutableLiveData = this.W;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(uri);
        mutableLiveData.setValue(listOf);
        z1 value = this.f42388f0.getValue();
        if ((value != null ? value.j() : null) == Message.ExtraMessageType.EDIT) {
            this.f42388f0.setValue(null);
        }
        z1();
    }

    public final int z0() {
        Object b10;
        b10 = kotlinx.coroutines.k.b(null, new l(null), 1, null);
        return ((Number) b10).intValue();
    }

    @m8.g
    public final j2 z1() {
        return c(new z(null));
    }
}
