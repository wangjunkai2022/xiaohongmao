package com.qennnsad.aknkaksd.presentation.ui.room.player.player;

import android.net.Uri;
import android.os.SystemClock;
import androidx.annotation.StringRes;
import androidx.arch.core.util.Function;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Transformations;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.google.mlkit.common.MlKitException;
import com.im.freechat.shared.entities.chat.Chat;
import com.qennnsad.aknkaksd.analytics.data.events.EventKt;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.GiftSentResponse;
import com.qennnsad.aknkaksd.data.bean.LiveSummary;
import com.qennnsad.aknkaksd.data.bean.StreamDeposit;
import com.qennnsad.aknkaksd.data.bean.fanclub.FanClubInfoBean;
import com.qennnsad.aknkaksd.data.bean.fanclub.JoinFanClubBean;
import com.qennnsad.aknkaksd.data.bean.gift.Gift;
import com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.data.bean.me.UserMoney;
import com.qennnsad.aknkaksd.data.bean.room.PrivateCheckBean;
import com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.data.bean.websocket.AudienceInfo;
import com.qennnsad.aknkaksd.data.bean.websocket.FanInfoEvent;
import com.qennnsad.aknkaksd.data.bean.websocket.LiveAudienceListMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.LocalRoomMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.RoomAdBean;
import com.qennnsad.aknkaksd.data.bean.websocket.RoomRole;
import com.qennnsad.aknkaksd.domain.usecase.other_user.g;
import com.qennnsad.aknkaksd.domain.usecase.room.a0;
import com.qennnsad.aknkaksd.domain.usecase.room.b;
import com.qennnsad.aknkaksd.domain.usecase.room.e0;
import com.qennnsad.aknkaksd.domain.usecase.room.x;
import com.qennnsad.aknkaksd.presentation.ui.main.index.DistrictType;
import com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.item.ItemTypeAttrs;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.t1;
import io.sentry.h4;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.bouncycastle.i18n.ErrorBundle;
import timber.log.Timber;

/* compiled from: PlayerViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000ö\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0084\u0002BÃ\u0001\b\u0007\u0012\u0006\u0010O\u001a\u00020J\u0012\b\u0010ê\u0001\u001a\u00030é\u0001\u0012\b\u0010\u0081\u0002\u001a\u00030\u0080\u0002\u0012\u0006\u0010S\u001a\u00020P\u0012\u0006\u0010W\u001a\u00020T\u0012\u0006\u0010[\u001a\u00020X\u0012\u0006\u0010_\u001a\u00020\\\u0012\u0006\u0010c\u001a\u00020`\u0012\u0006\u0010g\u001a\u00020d\u0012\u0006\u0010k\u001a\u00020h\u0012\u0006\u0010o\u001a\u00020l\u0012\u0006\u0010s\u001a\u00020p\u0012\u0006\u0010w\u001a\u00020t\u0012\u0006\u0010{\u001a\u00020x\u0012\u0006\u0010\u007f\u001a\u00020|\u0012\b\u0010\u0083\u0001\u001a\u00030\u0080\u0001\u0012\b\u0010\u0087\u0001\u001a\u00030\u0084\u0001\u0012\b\u0010\u008b\u0001\u001a\u00030\u0088\u0001\u0012\b\u0010\u008f\u0001\u001a\u00030\u008c\u0001\u0012\b\u0010\u0095\u0001\u001a\u00030\u0090\u0001\u0012\b\u0010\u009b\u0001\u001a\u00030\u0096\u0001¢\u0006\u0006\b\u0082\u0002\u0010\u0083\u0002J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005J\u0010\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u000bJ\u0006\u0010\u0013\u001a\u00020\u0003J\u0006\u0010\u0014\u001a\u00020\u0003J\u0006\u0010\u0015\u001a\u00020\u0003J\u000e\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016J#\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u0018\u0010 \u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00192\b\b\u0002\u0010\u001f\u001a\u00020\u0019J\u0006\u0010!\u001a\u00020\u000bJ\u001e\u0010&\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u000bJ\u0016\u0010)\u001a\u00020\u00032\u0006\u0010'\u001a\u00020\u00192\u0006\u0010(\u001a\u00020\u0019J\u0006\u0010*\u001a\u00020\u0003J\u0016\u0010-\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u0019J\u000e\u0010/\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u000bJ\u0016\u00103\u001a\u00020\u00072\u0006\u00101\u001a\u0002002\u0006\u00102\u001a\u00020\u0005J\u0014\u00107\u001a\u00020\u00072\f\u00106\u001a\b\u0012\u0004\u0012\u00020504J\u0014\u00108\u001a\u00020\u00072\f\u00106\u001a\b\u0012\u0004\u0012\u00020504J\f\u0010;\u001a\b\u0012\u0004\u0012\u00020:09J\u000e\u0010<\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010=\u001a\u00020\u0003J$\u0010B\u001a\u00020\u00072\u0006\u0010?\u001a\u00020>2\u0006\u0010(\u001a\u00020\u00192\f\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00070@J\u0006\u0010C\u001a\u00020\u0007J\u0006\u0010E\u001a\u00020DJ\u000e\u0010G\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\u000bJ\u000e\u0010I\u001a\u00020\u00032\u0006\u0010H\u001a\u00020\u0019R\u0017\u0010O\u001a\u00020J8\u0006¢\u0006\f\n\u0004\bK\u0010L\u001a\u0004\bM\u0010NR\u0014\u0010S\u001a\u00020P8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010RR\u0014\u0010W\u001a\u00020T8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010VR\u0014\u0010[\u001a\u00020X8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bY\u0010ZR\u0014\u0010_\u001a\u00020\\8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010^R\u0014\u0010c\u001a\u00020`8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\ba\u0010bR\u0014\u0010g\u001a\u00020d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\be\u0010fR\u0014\u0010k\u001a\u00020h8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bi\u0010jR\u0014\u0010o\u001a\u00020l8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bm\u0010nR\u0014\u0010s\u001a\u00020p8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bq\u0010rR\u0014\u0010w\u001a\u00020t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bu\u0010vR\u0014\u0010{\u001a\u00020x8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\by\u0010zR\u0014\u0010\u007f\u001a\u00020|8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b}\u0010~R\u0018\u0010\u0083\u0001\u001a\u00030\u0080\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u0018\u0010\u0087\u0001\u001a\u00030\u0084\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0018\u0010\u008b\u0001\u001a\u00030\u0088\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R\u0018\u0010\u008f\u0001\u001a\u00030\u008c\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008e\u0001R\u001d\u0010\u0095\u0001\u001a\u00030\u0090\u00018\u0006¢\u0006\u0010\n\u0006\b\u0091\u0001\u0010\u0092\u0001\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001R\u001d\u0010\u009b\u0001\u001a\u00030\u0096\u00018\u0006¢\u0006\u0010\n\u0006\b\u0097\u0001\u0010\u0098\u0001\u001a\u0006\b\u0099\u0001\u0010\u009a\u0001R&\u0010¢\u0001\u001a\f\u0012\u0007\u0012\u0005\u0018\u00010\u009d\u00010\u009c\u00018\u0006¢\u0006\u0010\n\u0006\b\u009e\u0001\u0010\u009f\u0001\u001a\u0006\b \u0001\u0010¡\u0001R\u0018\u0010¤\u0001\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b£\u0001\u00107R)\u0010«\u0001\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¥\u0001\u0010¦\u0001\u001a\u0006\b§\u0001\u0010¨\u0001\"\u0006\b©\u0001\u0010ª\u0001R)\u0010²\u0001\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¬\u0001\u0010\u00ad\u0001\u001a\u0006\b®\u0001\u0010¯\u0001\"\u0006\b°\u0001\u0010±\u0001R$\u0010¶\u0001\u001a\n\u0012\u0005\u0012\u00030³\u00010\u009c\u00018\u0006¢\u0006\u0010\n\u0006\b´\u0001\u0010\u009f\u0001\u001a\u0006\bµ\u0001\u0010¡\u0001R,\u0010º\u0001\u001a\u0012\u0012\r\u0012\u000b ·\u0001*\u0004\u0018\u00010\u000b0\u000b0\u009c\u00018\u0006¢\u0006\u0010\n\u0006\b¸\u0001\u0010\u009f\u0001\u001a\u0006\b¹\u0001\u0010¡\u0001R)\u0010¾\u0001\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b»\u0001\u0010¦\u0001\u001a\u0006\b¼\u0001\u0010¨\u0001\"\u0006\b½\u0001\u0010ª\u0001R)\u0010Â\u0001\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¿\u0001\u0010¦\u0001\u001a\u0006\bÀ\u0001\u0010¨\u0001\"\u0006\bÁ\u0001\u0010ª\u0001R$\u0010Æ\u0001\u001a\n\u0012\u0005\u0012\u00030Ã\u00010\u009c\u00018\u0006¢\u0006\u0010\n\u0006\bÄ\u0001\u0010\u009f\u0001\u001a\u0006\bÅ\u0001\u0010¡\u0001R#\u0010È\u0001\u001a\t\u0012\u0004\u0012\u0002000\u009c\u00018\u0006¢\u0006\u0010\n\u0006\b¦\u0001\u0010\u009f\u0001\u001a\u0006\bÇ\u0001\u0010¡\u0001R#\u0010Ë\u0001\u001a\n\u0012\u0005\u0012\u00030É\u00010\u009c\u00018\u0006¢\u0006\u000f\n\u0005\b7\u0010\u009f\u0001\u001a\u0006\bÊ\u0001\u0010¡\u0001R%\u0010Ñ\u0001\u001a\f\u0012\u0007\u0012\u0005\u0018\u00010Í\u00010Ì\u00018\u0006¢\u0006\u000f\n\u0005\b\b\u0010Î\u0001\u001a\u0006\bÏ\u0001\u0010Ð\u0001R\"\u0010Ó\u0001\u001a\t\u0012\u0004\u0012\u00020\u000b0Ì\u00018\u0006¢\u0006\u000f\n\u0005\b\u0012\u0010Î\u0001\u001a\u0006\bÒ\u0001\u0010Ð\u0001R:\u0010×\u0001\u001a \u0012\u001b\u0012\u0019\u0012\u0005\u0012\u00030Ô\u0001 ·\u0001*\u000b\u0012\u0005\u0012\u00030Ô\u0001\u0018\u000104040\u009c\u00018\u0006¢\u0006\u0010\n\u0006\bÕ\u0001\u0010\u009f\u0001\u001a\u0006\bÖ\u0001\u0010¡\u0001R%\u0010Ú\u0001\u001a\f\u0012\u0007\u0012\u0005\u0018\u00010Ø\u00010\u009c\u00018\u0006¢\u0006\u000f\n\u0005\b;\u0010\u009f\u0001\u001a\u0006\bÙ\u0001\u0010¡\u0001R,\u0010Ý\u0001\u001a\u0012\u0012\r\u0012\u000b ·\u0001*\u0004\u0018\u00010\u00050\u00050\u009c\u00018\u0006¢\u0006\u0010\n\u0006\bÛ\u0001\u0010\u009f\u0001\u001a\u0006\bÜ\u0001\u0010¡\u0001R)\u0010ä\u0001\u001a\u00030Þ\u00018\u0006@\u0006X\u0086.¢\u0006\u0017\n\u0005\b/\u0010ß\u0001\u001a\u0006\bà\u0001\u0010á\u0001\"\u0006\bâ\u0001\u0010ã\u0001R\u0018\u0010è\u0001\u001a\u00030å\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\bæ\u0001\u0010ç\u0001R\u001d\u0010ê\u0001\u001a\u00030é\u00018\u0006¢\u0006\u0010\n\u0006\bê\u0001\u0010ë\u0001\u001a\u0006\bì\u0001\u0010í\u0001R\u0017\u0010ð\u0001\u001a\u0005\u0018\u00010³\u00018F¢\u0006\b\u001a\u0006\bî\u0001\u0010ï\u0001R\u001a\u0010ò\u0001\u001a\b\u0012\u0004\u0012\u000200098F¢\u0006\b\u001a\u0006\bÛ\u0001\u0010ñ\u0001R\u0014\u0010ô\u0001\u001a\u00020\u000b8F¢\u0006\b\u001a\u0006\bó\u0001\u0010¯\u0001R\u0014\u0010ö\u0001\u001a\u00020\u000b8F¢\u0006\b\u001a\u0006\bõ\u0001\u0010¯\u0001R\u0014\u0010ø\u0001\u001a\u00020\u000b8F¢\u0006\b\u001a\u0006\b÷\u0001\u0010¯\u0001R\u0014\u0010ú\u0001\u001a\u00020\u000b8F¢\u0006\b\u001a\u0006\bù\u0001\u0010¯\u0001R\u0014\u0010ü\u0001\u001a\u00020\u000b8F¢\u0006\b\u001a\u0006\bû\u0001\u0010¯\u0001R\u0014\u0010ý\u0001\u001a\u00020\u000b8F¢\u0006\b\u001a\u0006\b\u00ad\u0001\u0010¯\u0001R\u0014\u0010ÿ\u0001\u001a\u00020\u000b8F¢\u0006\b\u001a\u0006\bþ\u0001\u0010¯\u0001¨\u0006\u0085\u0002"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;", "Lkotlinx/coroutines/j2;", "S0", "", k4.b.f84734a, "", "K", "position", "F0", "", "refreshOnlyUrl", "H0", "Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;", "msg", "C0", "withFinish", "L", "U0", "T0", "A0", "Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;", "event", "V0", "", "passType", "plid", "X0", "(Ljava/lang/String;Ljava/lang/Integer;)Lkotlinx/coroutines/j2;", "type", "password", "h0", "z0", "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;", "gift", "count", "isBleMsgReceived", "L0", "roomId", "content", "K0", "p0", "isSender", "opponentId", "R0", "isSlideToNext", "P", "Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;", "item", "pos", "v0", "", "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;", "list", "J", "J0", "", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;", "N", "w0", "Z0", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;", "selectedItem", "Lkotlin/Function0;", "onSuccess", "G0", "E0", "", "e0", "loadLimit", "D0", "uid", "B0", "Lcom/qennnsad/aknkaksd/data/repository/m;", "e", "Lcom/qennnsad/aknkaksd/data/repository/m;", "q0", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/usecase/room/n;", "h", "Lcom/qennnsad/aknkaksd/domain/usecase/room/n;", "getPrivateLimitUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;", "syncUserMoneyUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;", "j", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;", "getUserInfoUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;", "k", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;", "followUserUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/a0;", "l", "Lcom/qennnsad/aknkaksd/domain/usecase/user/a0;", "syncMyFanClubInfoUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/h;", "m", "Lcom/qennnsad/aknkaksd/domain/usecase/user/h;", "joinFanClubInfoUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/room/b;", "n", "Lcom/qennnsad/aknkaksd/domain/usecase/room/b;", "checkPrivatePassUseCase", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/e;", "o", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/e;", "ticketRoomValidator", "Lcom/qennnsad/aknkaksd/domain/usecase/room/q;", "p", "Lcom/qennnsad/aknkaksd/domain/usecase/room/q;", "getShareDataUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/room/a0;", "q", "Lcom/qennnsad/aknkaksd/domain/usecase/room/a0;", "sendDanmuUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;", "r", "Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;", "sendGiftUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;", "s", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;", "getPageListForAnchorUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;", "t", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;", "getFollowAnchorUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/room/x;", "u", "Lcom/qennnsad/aknkaksd/domain/usecase/room/x;", "pinMessageUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/room/t;", "v", "Lcom/qennnsad/aknkaksd/domain/usecase/room/t;", "interruptDepositUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/room/h;", "w", "Lcom/qennnsad/aknkaksd/domain/usecase/room/h;", "getCurrentAgentChatUseCase", "Lcom/qennnsad/aknkaksd/data/websocket/j;", y.b.f83919g, "Lcom/qennnsad/aknkaksd/data/websocket/j;", "u0", "()Lcom/qennnsad/aknkaksd/data/websocket/j;", "wsObjectPool", "Lcom/qennnsad/aknkaksd/util/e0;", y.b.f83920h, "Lcom/qennnsad/aknkaksd/util/e0;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "()Lcom/qennnsad/aknkaksd/util/e0;", "fanClubUtil", "Landroidx/lifecycle/MutableLiveData;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;", "z", "Landroidx/lifecycle/MutableLiveData;", "j0", "()Landroidx/lifecycle/MutableLiveData;", "roomAdBean", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "timePlayStarted", "B", "I", "f0", "()I", "P0", "(I)V", "playStatus", "C", "Z", "y0", "()Z", "O0", "(Z)V", "isPkSender", "Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;", "D", "t0", "userMoneyLiveData", "kotlin.jvm.PlatformType", ExifInterface.LONGITUDE_EAST, "d0", "pkMode", "F", ExifInterface.LATITUDE_SOUTH, "M0", "currentPosition", "G", "g0", "Q0", "previousPosition", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "H", "o0", "roomUserInfo", "n0", "roomSummary", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;", "m0", "roomPrivateLimit", "Landroidx/lifecycle/LiveData;", "Landroid/net/Uri;", "Landroidx/lifecycle/LiveData;", "k0", "()Landroidx/lifecycle/LiveData;", "roomLoadingAvatar", "l0", "roomOwnerIsFollowed", "Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;", "M", "Q", "audienceList", "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;", "U", "fanClubInfo", "O", "r0", "streamChatUnreadCount", "Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;", ExifInterface.GPS_DIRECTION_TRUE, "()Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;", "N0", "(Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)V", "districtType", "Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;", "c0", "()Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;", "pageRecorder", "Lg5/a;", "localDataManager", "Lg5/a;", "b0", "()Lg5/a;", "s0", "()Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;", "userMoney", "()Ljava/util/List;", "anchorList", "x0", "isFanOfAnchor", ExifInterface.LONGITUDE_WEST, "hasFanClubGifts", "R", "curDirectionIsDown", "Y", "hasNextRoomInCurDirection", "X", "hasNextItem", "hasPrevItem", "a0", "hasValidRoomTicket", "Lx4/a;", "analytics", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/room/n;Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/user/a0;Lcom/qennnsad/aknkaksd/domain/usecase/user/h;Lcom/qennnsad/aknkaksd/domain/usecase/room/b;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/e;Lcom/qennnsad/aknkaksd/domain/usecase/room/q;Lcom/qennnsad/aknkaksd/domain/usecase/room/a0;Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;Lcom/qennnsad/aknkaksd/domain/usecase/room/x;Lcom/qennnsad/aknkaksd/domain/usecase/room/t;Lcom/qennnsad/aknkaksd/domain/usecase/room/h;Lcom/qennnsad/aknkaksd/data/websocket/j;Lcom/qennnsad/aknkaksd/util/e0;)V", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class PlayerViewModel extends com.qennnsad.aknkaksd.presentation.common.l<a> {
    private long A;
    private int B;
    private boolean C;
    @m8.g
    private final MutableLiveData<UserMoney> D;
    @m8.g
    private final MutableLiveData<Boolean> E;
    private int F;
    private int G;
    @m8.g
    private final MutableLiveData<UserInfo> H;
    @m8.g
    private final MutableLiveData<LiveSummary> I;
    @m8.g
    private final MutableLiveData<PrivateLimitBean> J;
    @m8.g
    private final LiveData<Uri> K;
    @m8.g
    private final LiveData<Boolean> L;
    @m8.g
    private final MutableLiveData<List<AudienceInfo>> M;
    @m8.g
    private final MutableLiveData<FanClubInfoBean> N;
    @m8.g
    private final MutableLiveData<Integer> O;
    public DistrictType P;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f53688e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final g5.a f53689f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final x4.a f53690g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.room.n f53691h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.user.e0 f53692i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.other_user.j f53693j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.other_user.g f53694k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.user.a0 f53695l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.user.h f53696m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.room.b f53697n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog.e f53698o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.room.q f53699p;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.room.a0 f53700q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.room.e0 f53701r;
    @m8.g

    /* renamed from: s  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.anchor.i f53702s;
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.anchor.f f53703t;
    @m8.g

    /* renamed from: u  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.room.x f53704u;
    @m8.g

    /* renamed from: v  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.room.t f53705v;
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.room.h f53706w;
    @m8.g

    /* renamed from: x  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.websocket.j f53707x;
    @m8.g

    /* renamed from: y  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.util.e0 f53708y;
    @m8.g

    /* renamed from: z  reason: collision with root package name */
    private final MutableLiveData<RoomAdBean> f53709z;

    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\f\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000fB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b¨\u0006\u001c"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;", "", "<init>", "()V", "a", "b", "c", "d", "e", "f", "g", "h", ContextChain.TAG_INFRA, "j", "k", "l", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$a;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$b;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$d;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$f;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$g;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$h;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$i;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$j;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$k;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$l;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static abstract class a {

        /* compiled from: PlayerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0002HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$a;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;", "", "a", "data", "b", "toString", "", "hashCode", "", "other", "", "equals", "Ljava/lang/String;", "d", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* renamed from: com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0444a extends a {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            private final String f53710a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0444a(@m8.g String data) {
                super(null);
                Intrinsics.checkNotNullParameter(data, "data");
                this.f53710a = data;
            }

            public static /* synthetic */ C0444a c(C0444a c0444a, String str, int i4, Object obj) {
                if ((i4 & 1) != 0) {
                    str = c0444a.f53710a;
                }
                return c0444a.b(str);
            }

            @m8.g
            public final String a() {
                return this.f53710a;
            }

            @m8.g
            public final C0444a b(@m8.g String data) {
                Intrinsics.checkNotNullParameter(data, "data");
                return new C0444a(data);
            }

            @m8.g
            public final String d() {
                return this.f53710a;
            }

            public boolean equals(@m8.h Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof C0444a) && Intrinsics.areEqual(this.f53710a, ((C0444a) obj).f53710a);
            }

            public int hashCode() {
                return this.f53710a.hashCode();
            }

            @m8.g
            public String toString() {
                return "CopyAndShowShareData(data=" + this.f53710a + ')';
            }
        }

        /* compiled from: PlayerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001c\u0010\u0006\u001a\u00020\u00002\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\t\u001a\u00020\bHÖ\u0001J\t\u0010\n\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000f\u001a\u0004\b\u0010\u0010\u0004¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$b;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;", "", "a", "()Ljava/lang/Integer;", "messageRes", "b", "(Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$b;", "", "toString", "hashCode", "", "other", "", "equals", "Ljava/lang/Integer;", "d", "<init>", "(Ljava/lang/Integer;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class b extends a {
            @m8.h

            /* renamed from: a  reason: collision with root package name */
            private final Integer f53711a;

            public b() {
                this(null, 1, null);
            }

            public b(@StringRes @m8.h Integer num) {
                super(null);
                this.f53711a = num;
            }

            public static /* synthetic */ b c(b bVar, Integer num, int i4, Object obj) {
                if ((i4 & 1) != 0) {
                    num = bVar.f53711a;
                }
                return bVar.b(num);
            }

            @m8.h
            public final Integer a() {
                return this.f53711a;
            }

            @m8.g
            public final b b(@StringRes @m8.h Integer num) {
                return new b(num);
            }

            @m8.h
            public final Integer d() {
                return this.f53711a;
            }

            public boolean equals(@m8.h Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof b) && Intrinsics.areEqual(this.f53711a, ((b) obj).f53711a);
            }

            public int hashCode() {
                Integer num = this.f53711a;
                if (num == null) {
                    return 0;
                }
                return num.hashCode();
            }

            @m8.g
            public String toString() {
                return "EndStreamDialogEvent(messageRes=" + this.f53711a + ')';
            }

            public /* synthetic */ b(Integer num, int i4, DefaultConstructorMarker defaultConstructorMarker) {
                this((i4 & 1) != 0 ? null : num);
            }
        }

        /* compiled from: PlayerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J(\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u0004HÆ\u0001¢\u0006\u0004\b\t\u0010\nJ\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\t\u0010\r\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0015\u001a\u0004\b\u0016\u0010\u0006¨\u0006\u0019"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;", "", "a", "", "b", "()Ljava/lang/Integer;", h4.b.f83287e, "messageRes", "c", "(Ljava/lang/Throwable;Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;", "", "toString", "hashCode", "", "other", "", "equals", "Ljava/lang/Throwable;", "e", "()Ljava/lang/Throwable;", "Ljava/lang/Integer;", "f", "<init>", "(Ljava/lang/Throwable;Ljava/lang/Integer;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class c extends a {
            @m8.h

            /* renamed from: a  reason: collision with root package name */
            private final Throwable f53712a;
            @m8.h

            /* renamed from: b  reason: collision with root package name */
            private final Integer f53713b;

            public c() {
                this(null, null, 3, null);
            }

            public /* synthetic */ c(Throwable th, Integer num, int i4, DefaultConstructorMarker defaultConstructorMarker) {
                this((i4 & 1) != 0 ? null : th, (i4 & 2) != 0 ? null : num);
            }

            public static /* synthetic */ c d(c cVar, Throwable th, Integer num, int i4, Object obj) {
                if ((i4 & 1) != 0) {
                    th = cVar.f53712a;
                }
                if ((i4 & 2) != 0) {
                    num = cVar.f53713b;
                }
                return cVar.c(th, num);
            }

            @m8.h
            public final Throwable a() {
                return this.f53712a;
            }

            @m8.h
            public final Integer b() {
                return this.f53713b;
            }

            @m8.g
            public final c c(@m8.h Throwable th, @StringRes @m8.h Integer num) {
                return new c(th, num);
            }

            @m8.h
            public final Throwable e() {
                return this.f53712a;
            }

            public boolean equals(@m8.h Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof c) {
                    c cVar = (c) obj;
                    return Intrinsics.areEqual(this.f53712a, cVar.f53712a) && Intrinsics.areEqual(this.f53713b, cVar.f53713b);
                }
                return false;
            }

            @m8.h
            public final Integer f() {
                return this.f53713b;
            }

            public int hashCode() {
                Throwable th = this.f53712a;
                int hashCode = (th == null ? 0 : th.hashCode()) * 31;
                Integer num = this.f53713b;
                return hashCode + (num != null ? num.hashCode() : 0);
            }

            @m8.g
            public String toString() {
                return "FinishActivityEvent(exception=" + this.f53712a + ", messageRes=" + this.f53713b + ')';
            }

            public c(@m8.h Throwable th, @StringRes @m8.h Integer num) {
                super(null);
                this.f53712a = th;
                this.f53713b = num;
            }
        }

        /* compiled from: PlayerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$d;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;", "", "a", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;", "b", "type", "stream", "c", "toString", "", "hashCode", "", "other", "", "equals", "Ljava/lang/String;", "f", "()Ljava/lang/String;", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;", "e", "()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;", "<init>", "(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class d extends a {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            private final String f53714a;
            @m8.g

            /* renamed from: b  reason: collision with root package name */
            private final PrivateLimitBean.StreamBean f53715b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(@m8.g String type, @m8.g PrivateLimitBean.StreamBean stream) {
                super(null);
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(stream, "stream");
                this.f53714a = type;
                this.f53715b = stream;
            }

            public static /* synthetic */ d d(d dVar, String str, PrivateLimitBean.StreamBean streamBean, int i4, Object obj) {
                if ((i4 & 1) != 0) {
                    str = dVar.f53714a;
                }
                if ((i4 & 2) != 0) {
                    streamBean = dVar.f53715b;
                }
                return dVar.c(str, streamBean);
            }

            @m8.g
            public final String a() {
                return this.f53714a;
            }

            @m8.g
            public final PrivateLimitBean.StreamBean b() {
                return this.f53715b;
            }

            @m8.g
            public final d c(@m8.g String type, @m8.g PrivateLimitBean.StreamBean stream) {
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(stream, "stream");
                return new d(type, stream);
            }

            @m8.g
            public final PrivateLimitBean.StreamBean e() {
                return this.f53715b;
            }

            public boolean equals(@m8.h Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof d) {
                    d dVar = (d) obj;
                    return Intrinsics.areEqual(this.f53714a, dVar.f53714a) && Intrinsics.areEqual(this.f53715b, dVar.f53715b);
                }
                return false;
            }

            @m8.g
            public final String f() {
                return this.f53714a;
            }

            public int hashCode() {
                return (this.f53714a.hashCode() * 31) + this.f53715b.hashCode();
            }

            @m8.g
            public String toString() {
                return "GetPrivateAccessSuccessful(type=" + this.f53714a + ", stream=" + this.f53715b + ')';
            }
        }

        /* compiled from: PlayerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nHÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "a", "opponent", "b", "", "toString", "", "hashCode", "", "other", "", "equals", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "d", "()Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "<init>", "(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class e extends a {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            private final UserInfo f53716a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public e(@m8.g UserInfo opponent) {
                super(null);
                Intrinsics.checkNotNullParameter(opponent, "opponent");
                this.f53716a = opponent;
            }

            public static /* synthetic */ e c(e eVar, UserInfo userInfo, int i4, Object obj) {
                if ((i4 & 1) != 0) {
                    userInfo = eVar.f53716a;
                }
                return eVar.b(userInfo);
            }

            @m8.g
            public final UserInfo a() {
                return this.f53716a;
            }

            @m8.g
            public final e b(@m8.g UserInfo opponent) {
                Intrinsics.checkNotNullParameter(opponent, "opponent");
                return new e(opponent);
            }

            @m8.g
            public final UserInfo d() {
                return this.f53716a;
            }

            public boolean equals(@m8.h Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof e) && Intrinsics.areEqual(this.f53716a, ((e) obj).f53716a);
            }

            public int hashCode() {
                return this.f53716a.hashCode();
            }

            @m8.g
            public String toString() {
                return "PkOpponentInfoLoaded(opponent=" + this.f53716a + ')';
            }
        }

        /* compiled from: PlayerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$f;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class f extends a {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            public static final f f53717a = new f();

            private f() {
                super(null);
            }
        }

        /* compiled from: PlayerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nHÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$g;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;", "a", "limitBean", "b", "", "toString", "", "hashCode", "", "other", "", "equals", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;", "d", "()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;", "<init>", "(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class g extends a {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            private final PrivateLimitBean f53718a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public g(@m8.g PrivateLimitBean limitBean) {
                super(null);
                Intrinsics.checkNotNullParameter(limitBean, "limitBean");
                this.f53718a = limitBean;
            }

            public static /* synthetic */ g c(g gVar, PrivateLimitBean privateLimitBean, int i4, Object obj) {
                if ((i4 & 1) != 0) {
                    privateLimitBean = gVar.f53718a;
                }
                return gVar.b(privateLimitBean);
            }

            @m8.g
            public final PrivateLimitBean a() {
                return this.f53718a;
            }

            @m8.g
            public final g b(@m8.g PrivateLimitBean limitBean) {
                Intrinsics.checkNotNullParameter(limitBean, "limitBean");
                return new g(limitBean);
            }

            @m8.g
            public final PrivateLimitBean d() {
                return this.f53718a;
            }

            public boolean equals(@m8.h Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof g) && Intrinsics.areEqual(this.f53718a, ((g) obj).f53718a);
            }

            public int hashCode() {
                return this.f53718a.hashCode();
            }

            @m8.g
            public String toString() {
                return "PrivateLimitForJumpReady(limitBean=" + this.f53718a + ')';
            }
        }

        /* compiled from: PlayerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0002HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$h;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;", "", "a", "newUrl", "b", "toString", "", "hashCode", "", "other", "", "equals", "Ljava/lang/String;", "d", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class h extends a {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            private final String f53719a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public h(@m8.g String newUrl) {
                super(null);
                Intrinsics.checkNotNullParameter(newUrl, "newUrl");
                this.f53719a = newUrl;
            }

            public static /* synthetic */ h c(h hVar, String str, int i4, Object obj) {
                if ((i4 & 1) != 0) {
                    str = hVar.f53719a;
                }
                return hVar.b(str);
            }

            @m8.g
            public final String a() {
                return this.f53719a;
            }

            @m8.g
            public final h b(@m8.g String newUrl) {
                Intrinsics.checkNotNullParameter(newUrl, "newUrl");
                return new h(newUrl);
            }

            @m8.g
            public final String d() {
                return this.f53719a;
            }

            public boolean equals(@m8.h Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof h) && Intrinsics.areEqual(this.f53719a, ((h) obj).f53719a);
            }

            public int hashCode() {
                return this.f53719a.hashCode();
            }

            @m8.g
            public String toString() {
                return "RefreshPrivateUrl(newUrl=" + this.f53719a + ')';
            }
        }

        /* compiled from: PlayerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nHÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$i;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;", "Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;", "a", "joinFanClubInfo", "b", "", "toString", "", "hashCode", "", "other", "", "equals", "Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;", "d", "()Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;", "<init>", "(Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class i extends a {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            private final JoinFanClubBean f53720a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public i(@m8.g JoinFanClubBean joinFanClubInfo) {
                super(null);
                Intrinsics.checkNotNullParameter(joinFanClubInfo, "joinFanClubInfo");
                this.f53720a = joinFanClubInfo;
            }

            public static /* synthetic */ i c(i iVar, JoinFanClubBean joinFanClubBean, int i4, Object obj) {
                if ((i4 & 1) != 0) {
                    joinFanClubBean = iVar.f53720a;
                }
                return iVar.b(joinFanClubBean);
            }

            @m8.g
            public final JoinFanClubBean a() {
                return this.f53720a;
            }

            @m8.g
            public final i b(@m8.g JoinFanClubBean joinFanClubInfo) {
                Intrinsics.checkNotNullParameter(joinFanClubInfo, "joinFanClubInfo");
                return new i(joinFanClubInfo);
            }

            @m8.g
            public final JoinFanClubBean d() {
                return this.f53720a;
            }

            public boolean equals(@m8.h Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof i) && Intrinsics.areEqual(this.f53720a, ((i) obj).f53720a);
            }

            public int hashCode() {
                return this.f53720a.hashCode();
            }

            @m8.g
            public String toString() {
                return "ShowFanClubSuccessDialog(joinFanClubInfo=" + this.f53720a + ')';
            }
        }

        /* compiled from: PlayerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$j;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class j extends a {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            public static final j f53721a = new j();

            private j() {
                super(null);
            }
        }

        /* compiled from: PlayerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0003\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$k;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;", "", "a", "warnStringId", "b", "", "toString", "hashCode", "", "other", "", "equals", "I", "d", "()I", "<init>", "(I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class k extends a {

            /* renamed from: a  reason: collision with root package name */
            private final int f53722a;

            public k(@StringRes int i4) {
                super(null);
                this.f53722a = i4;
            }

            public static /* synthetic */ k c(k kVar, int i4, int i10, Object obj) {
                if ((i10 & 1) != 0) {
                    i4 = kVar.f53722a;
                }
                return kVar.b(i4);
            }

            public final int a() {
                return this.f53722a;
            }

            @m8.g
            public final k b(@StringRes int i4) {
                return new k(i4);
            }

            public final int d() {
                return this.f53722a;
            }

            public boolean equals(@m8.h Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof k) && this.f53722a == ((k) obj).f53722a;
            }

            public int hashCode() {
                return this.f53722a;
            }

            @m8.g
            public String toString() {
                return "SkipRoom(warnStringId=" + this.f53722a + ')';
            }
        }

        /* compiled from: PlayerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nHÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$l;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;", "a", "stream", "b", "", "toString", "", "hashCode", "", "other", "", "equals", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;", "d", "()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;", "<init>", "(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class l extends a {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            private final PrivateLimitBean.StreamBean f53723a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public l(@m8.g PrivateLimitBean.StreamBean stream) {
                super(null);
                Intrinsics.checkNotNullParameter(stream, "stream");
                this.f53723a = stream;
            }

            public static /* synthetic */ l c(l lVar, PrivateLimitBean.StreamBean streamBean, int i4, Object obj) {
                if ((i4 & 1) != 0) {
                    streamBean = lVar.f53723a;
                }
                return lVar.b(streamBean);
            }

            @m8.g
            public final PrivateLimitBean.StreamBean a() {
                return this.f53723a;
            }

            @m8.g
            public final l b(@m8.g PrivateLimitBean.StreamBean stream) {
                Intrinsics.checkNotNullParameter(stream, "stream");
                return new l(stream);
            }

            @m8.g
            public final PrivateLimitBean.StreamBean d() {
                return this.f53723a;
            }

            public boolean equals(@m8.h Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof l) && Intrinsics.areEqual(this.f53723a, ((l) obj).f53723a);
            }

            public int hashCode() {
                return this.f53723a.hashCode();
            }

            @m8.g
            public String toString() {
                return "ValidationPassed(stream=" + this.f53723a + ')';
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$followRoomOwner$1", f = "PlayerViewModel.kt", i = {}, l = {179}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f53724a;

        /* renamed from: b  reason: collision with root package name */
        boolean f53725b;

        /* renamed from: c  reason: collision with root package name */
        int f53726c;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ boolean f53728e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(boolean z9, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f53728e = z9;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f53728e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            PlayerViewModel playerViewModel;
            Object b10;
            boolean z9;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f53726c;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                LiveSummary value = PlayerViewModel.this.n0().getValue();
                if (value != null) {
                    playerViewModel = PlayerViewModel.this;
                    boolean z10 = this.f53728e;
                    com.qennnsad.aknkaksd.domain.usecase.other_user.g gVar = playerViewModel.f53694k;
                    String id = value.getId();
                    Intrinsics.checkNotNullExpressionValue(id, "it.id");
                    String curroomnum = value.getCurroomnum();
                    Intrinsics.checkNotNullExpressionValue(curroomnum, "it.curroomnum");
                    g.a aVar = new g.a(id, curroomnum);
                    this.f53724a = playerViewModel;
                    this.f53725b = z10;
                    this.f53726c = 1;
                    b10 = gVar.b(aVar, this);
                    if (b10 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    z9 = z10;
                }
                return Unit.INSTANCE;
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                z9 = this.f53725b;
                playerViewModel = (PlayerViewModel) this.f53724a;
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            if (Result.m77isSuccessimpl(b10)) {
                String str = (String) b10;
                if (z9) {
                    playerViewModel.l(new a.b(Boxing.boxInt(R.string.follow_success)));
                } else {
                    playerViewModel.o(R.string.follow_success);
                }
            }
            if (Result.m73exceptionOrNullimpl(b10) != null) {
                if (z9) {
                    playerViewModel.l(new a.b(Boxing.boxInt(R.string.follow_error)));
                } else {
                    playerViewModel.o(R.string.follow_error);
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$getAnchorSlide$1", f = "PlayerViewModel.kt", i = {}, l = {315, 327}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class c extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f53729a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f53730b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ PlayerViewModel f53731c;

        /* compiled from: PlayerViewModel.kt */
        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[DistrictType.values().length];
                iArr[DistrictType.Pk.ordinal()] = 1;
                iArr[DistrictType.Followed.ordinal()] = 2;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(boolean z9, PlayerViewModel playerViewModel, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f53730b = z9;
            this.f53731c = playerViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(this.f53730b, this.f53731c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x00ab  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0105  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 285
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel.c.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function1<PrivateCheckBean, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f53732a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PlayerViewModel f53733b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f53734c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, PlayerViewModel playerViewModel, String str2) {
            super(1);
            this.f53732a = str;
            this.f53733b = playerViewModel;
            this.f53734c = str2;
        }

        public final void a(@m8.g PrivateCheckBean it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (Intrinsics.areEqual(this.f53732a, "2") && !this.f53733b.f53698o.e(this.f53734c, it)) {
                this.f53733b.l(new a.c(null, Integer.valueOf((int) R.string.room_ticket_validation_error), 1, null));
                return;
            }
            PlayerViewModel playerViewModel = this.f53733b;
            String str = this.f53732a;
            PrivateLimitBean.StreamBean stream = it.getStream();
            Intrinsics.checkNotNullExpressionValue(stream, "it.stream");
            playerViewModel.l(new a.d(str, stream));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(PrivateCheckBean privateCheckBean) {
            a(privateCheckBean);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$getShareData$1", f = "PlayerViewModel.kt", i = {}, l = {294}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class e extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f53735a;

        e(Continuation<? super e> continuation) {
            super(2, continuation);
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
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f53735a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.room.q qVar = PlayerViewModel.this.f53699p;
                LiveSummary value = PlayerViewModel.this.n0().getValue();
                String id = value != null ? value.getId() : null;
                if (id == null) {
                    return Unit.INSTANCE;
                }
                this.f53735a = 1;
                b10 = qVar.b(id, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            PlayerViewModel playerViewModel = PlayerViewModel.this;
            if (Result.m77isSuccessimpl(b10)) {
                playerViewModel.l(new a.C0444a((String) b10));
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$interruptStreamChatDeposit$1", f = "PlayerViewModel.kt", i = {}, l = {401}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class f extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f53737a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f53739c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(int i4, Continuation<? super f> continuation) {
            super(2, continuation);
            this.f53739c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new f(this.f53739c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((f) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f53737a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.room.t tVar = PlayerViewModel.this.f53705v;
                Integer boxInt = Boxing.boxInt(this.f53739c);
                this.f53737a = 1;
                if (tVar.b(boxInt, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            PlayerViewModel.this.K(this.f53739c);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$joinFanClub$1", f = "PlayerViewModel.kt", i = {}, l = {MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class g extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f53740a;

        /* renamed from: b  reason: collision with root package name */
        int f53741b;

        g(Continuation<? super g> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new g(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((g) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            String id;
            Object b10;
            PlayerViewModel playerViewModel;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f53741b;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                LiveSummary value = PlayerViewModel.this.n0().getValue();
                if (value != null && (id = value.getId()) != null) {
                    PlayerViewModel playerViewModel2 = PlayerViewModel.this;
                    com.qennnsad.aknkaksd.domain.usecase.user.h hVar = playerViewModel2.f53696m;
                    this.f53740a = playerViewModel2;
                    this.f53741b = 1;
                    b10 = hVar.b(id, this);
                    if (b10 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    playerViewModel = playerViewModel2;
                }
                return Unit.INSTANCE;
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                playerViewModel = (PlayerViewModel) this.f53740a;
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            if (Result.m77isSuccessimpl(b10)) {
                JoinFanClubBean joinFanClubBean = (JoinFanClubBean) b10;
                playerViewModel.U().setValue(joinFanClubBean.getInfo());
                playerViewModel.l(new a.i(joinFanClubBean));
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$loadPrivateLimitForJump$1", f = "PlayerViewModel.kt", i = {}, l = {464}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class h extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f53743a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f53745c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String str, Continuation<? super h> continuation) {
            super(2, continuation);
            this.f53745c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new h(this.f53745c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((h) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f53743a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.room.n nVar = PlayerViewModel.this.f53691h;
                String str = this.f53745c;
                this.f53743a = 1;
                b10 = nVar.b(str, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            PlayerViewModel playerViewModel = PlayerViewModel.this;
            if (Result.m77isSuccessimpl(b10)) {
                playerViewModel.l(new a.g((PrivateLimitBean) b10));
            }
            PlayerViewModel playerViewModel2 = PlayerViewModel.this;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(b10);
            if (m73exceptionOrNullimpl != null) {
                Timber.f93860a.z(m73exceptionOrNullimpl, "Private limit for jump failed", new Object[0]);
                playerViewModel2.l(a.f.f53717a);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$onRoomPositionChanged$1", f = "PlayerViewModel.kt", i = {}, l = {136}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class i extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f53746a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f53747b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f53748c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ PlayerViewModel f53749d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: PlayerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$onRoomPositionChanged$1$1", f = "PlayerViewModel.kt", i = {}, l = {com.google.android.exoplayer2.extractor.ts.h0.H}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f53750a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ PlayerViewModel f53751b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ LiveSummary f53752c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ int f53753d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(PlayerViewModel playerViewModel, LiveSummary liveSummary, int i4, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f53751b = playerViewModel;
                this.f53752c = liveSummary;
                this.f53753d = i4;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new a(this.f53751b, this.f53752c, this.f53753d, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object b10;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f53750a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    com.qennnsad.aknkaksd.domain.usecase.other_user.j jVar = this.f53751b.f53693j;
                    String id = this.f53752c.getId();
                    Intrinsics.checkNotNullExpressionValue(id, "anchorSummary.id");
                    this.f53750a = 1;
                    b10 = jVar.b(id, this);
                    if (b10 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                    b10 = ((Result) obj).m79unboximpl();
                }
                PlayerViewModel playerViewModel = this.f53751b;
                int i10 = this.f53753d;
                if (Result.m77isSuccessimpl(b10)) {
                    UserInfo userInfo = (UserInfo) b10;
                    if (playerViewModel.S() != i10) {
                        return Unit.INSTANCE;
                    }
                    playerViewModel.o0().setValue(userInfo);
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: PlayerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$onRoomPositionChanged$1$2", f = "PlayerViewModel.kt", i = {}, l = {144}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class b extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f53754a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ PlayerViewModel f53755b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ LiveSummary f53756c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ int f53757d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(PlayerViewModel playerViewModel, LiveSummary liveSummary, int i4, Continuation<? super b> continuation) {
                super(2, continuation);
                this.f53755b = playerViewModel;
                this.f53756c = liveSummary;
                this.f53757d = i4;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new b(this.f53755b, this.f53756c, this.f53757d, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object b10;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f53754a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    com.qennnsad.aknkaksd.domain.usecase.room.n nVar = this.f53755b.f53691h;
                    String id = this.f53756c.getId();
                    Intrinsics.checkNotNullExpressionValue(id, "anchorSummary.id");
                    this.f53754a = 1;
                    b10 = nVar.b(id, this);
                    if (b10 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                    b10 = ((Result) obj).m79unboximpl();
                }
                PlayerViewModel playerViewModel = this.f53755b;
                int i10 = this.f53757d;
                if (Result.m77isSuccessimpl(b10)) {
                    PrivateLimitBean privateLimitBean = (PrivateLimitBean) b10;
                    if (playerViewModel.S() != i10) {
                        return Unit.INSTANCE;
                    }
                    playerViewModel.m0().setValue(privateLimitBean);
                }
                PlayerViewModel playerViewModel2 = this.f53755b;
                Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(b10);
                if (m73exceptionOrNullimpl != null) {
                    Timber.f93860a.z(m73exceptionOrNullimpl, "Private limit load failed", new Object[0]);
                    playerViewModel2.l(a.f.f53717a);
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(int i4, PlayerViewModel playerViewModel, Continuation<? super i> continuation) {
            super(2, continuation);
            this.f53748c = i4;
            this.f53749d = playerViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            i iVar = new i(this.f53748c, this.f53749d, continuation);
            iVar.f53747b = obj;
            return iVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((i) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            List<AudienceInfo> emptyList;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f53746a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.s0 s0Var = (kotlinx.coroutines.s0) this.f53747b;
                if (this.f53748c < this.f53749d.O().size() && this.f53748c >= 0) {
                    LiveSummary liveSummary = this.f53749d.O().get(this.f53748c);
                    Timber.b bVar = Timber.f93860a;
                    bVar.k("Position changed to " + this.f53748c + ". Loading new anchor: " + liveSummary, new Object[0]);
                    this.f53749d.n0().setValue(liveSummary);
                    PlayerViewModel playerViewModel = this.f53749d;
                    playerViewModel.Q0(playerViewModel.S());
                    this.f53749d.M0(this.f53748c);
                    MutableLiveData<List<AudienceInfo>> Q = this.f53749d.Q();
                    emptyList = CollectionsKt__CollectionsKt.emptyList();
                    Q.setValue(emptyList);
                    this.f53749d.P0(0);
                    this.f53749d.A = 0L;
                    if (this.f53749d.R() && !this.f53749d.X()) {
                        this.f53749d.P(true);
                    }
                    kotlinx.coroutines.y0[] y0VarArr = {kotlinx.coroutines.j.b(s0Var, null, null, new a(this.f53749d, liveSummary, this.f53748c, null), 3, null), kotlinx.coroutines.j.b(s0Var, null, null, new b(this.f53749d, liveSummary, this.f53748c, null), 3, null)};
                    this.f53746a = 1;
                    if (kotlinx.coroutines.f.b(y0VarArr, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    Timber.b bVar2 = Timber.f93860a;
                    bVar2.d("Anchor position is out of bounds. Position: " + this.f53748c, new Object[0]);
                    this.f53749d.l(new a.c(null, Boxing.boxInt(R.string.msg_unknown_error), 1, null));
                    return Unit.INSTANCE;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class j extends Lambda implements Function1<GiftSentResponse, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f53758a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(Function0<Unit> function0) {
            super(1);
            this.f53758a = function0;
        }

        public final void a(@m8.g GiftSentResponse it) {
            Intrinsics.checkNotNullParameter(it, "it");
            this.f53758a.invoke();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(GiftSentResponse giftSentResponse) {
            a(giftSentResponse);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$reloadPrivateLimit$1", f = "PlayerViewModel.kt", i = {0}, l = {159}, m = "invokeSuspend", n = {"position"}, s = {"I$0"})
    /* loaded from: classes3.dex */
    public static final class k extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f53759a;

        /* renamed from: b  reason: collision with root package name */
        boolean f53760b;

        /* renamed from: c  reason: collision with root package name */
        int f53761c;

        /* renamed from: d  reason: collision with root package name */
        int f53762d;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ boolean f53764f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(boolean z9, Continuation<? super k> continuation) {
            super(2, continuation);
            this.f53764f = z9;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new k(this.f53764f, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((k) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            PlayerViewModel playerViewModel;
            boolean z9;
            Object b10;
            int i4;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.f53762d;
            boolean z10 = true;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                LiveSummary value = PlayerViewModel.this.n0().getValue();
                if (value != null) {
                    playerViewModel = PlayerViewModel.this;
                    z9 = this.f53764f;
                    int S = playerViewModel.S();
                    com.qennnsad.aknkaksd.domain.usecase.room.n nVar = playerViewModel.f53691h;
                    String id = value.getId();
                    Intrinsics.checkNotNullExpressionValue(id, "it.id");
                    this.f53759a = playerViewModel;
                    this.f53760b = z9;
                    this.f53761c = S;
                    this.f53762d = 1;
                    b10 = nVar.b(id, this);
                    if (b10 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    i4 = S;
                }
                return Unit.INSTANCE;
            } else if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                i4 = this.f53761c;
                z9 = this.f53760b;
                playerViewModel = (PlayerViewModel) this.f53759a;
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            if (Result.m77isSuccessimpl(b10)) {
                PrivateLimitBean privateLimitBean = (PrivateLimitBean) b10;
                if (playerViewModel.S() != i4) {
                    return Unit.INSTANCE;
                }
                if (z9) {
                    PrivateLimitBean.StreamBean stream = privateLimitBean.getStream();
                    String pull_url = stream != null ? stream.getPull_url() : null;
                    if (pull_url != null && pull_url.length() != 0) {
                        z10 = false;
                    }
                    if (!z10) {
                        String pull_url2 = privateLimitBean.getStream().getPull_url();
                        Intrinsics.checkNotNullExpressionValue(pull_url2, "it.stream.pull_url");
                        playerViewModel.l(new a.h(pull_url2));
                        return Unit.INSTANCE;
                    }
                }
                playerViewModel.m0().setValue(privateLimitBean);
            }
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(b10);
            if (m73exceptionOrNullimpl != null) {
                Timber.f93860a.z(m73exceptionOrNullimpl, "Private limit reload failed", new Object[0]);
                playerViewModel.l(a.f.f53717a);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "user", "Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;", ErrorBundle.SUMMARY_ENTRY, "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class l extends Lambda implements Function2<UserBean, LiveSummary, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final l f53765a = new l();

        l() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: a */
        public final Boolean invoke(@m8.h UserBean userBean, @m8.h LiveSummary liveSummary) {
            String id;
            List<String> follow_users = userBean != null ? userBean.getFollow_users() : null;
            if (follow_users == null) {
                follow_users = CollectionsKt__CollectionsKt.emptyList();
            }
            return (liveSummary == null || (id = liveSummary.getId()) == null) ? Boolean.FALSE : Boolean.valueOf(follow_users.contains(id));
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$sendDanmu$1", f = "PlayerViewModel.kt", i = {}, l = {284}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class m extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f53766a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f53768c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f53769d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String str, String str2, Continuation<? super m> continuation) {
            super(2, continuation);
            this.f53768c = str;
            this.f53769d = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new m(this.f53768c, this.f53769d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((m) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            String message;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f53766a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.room.a0 a0Var = PlayerViewModel.this.f53700q;
                a0.a aVar = new a0.a(this.f53768c, this.f53769d);
                this.f53766a = 1;
                b10 = a0Var.b(aVar, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            PlayerViewModel playerViewModel = PlayerViewModel.this;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(b10);
            if (m73exceptionOrNullimpl != null && (message = m73exceptionOrNullimpl.getMessage()) != null) {
                if (message.length() > 0) {
                    playerViewModel.r(message);
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class n extends Lambda implements Function1<GiftSentResponse, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final n f53770a = new n();

        n() {
            super(1);
        }

        public final void a(@m8.g GiftSentResponse it) {
            Intrinsics.checkNotNullParameter(it, "it");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(GiftSentResponse giftSentResponse) {
            a(giftSentResponse);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class o extends Lambda implements Function1<UserInfo, Unit> {
        o() {
            super(1);
        }

        public final void a(@m8.g UserInfo it) {
            Intrinsics.checkNotNullParameter(it, "it");
            PlayerViewModel.this.l(new a.e(it));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(UserInfo userInfo) {
            a(userInfo);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: Transformations.kt */
    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\b\u0010\u0000\u001a\n \u0002*\u0004\u0018\u0001H\u0001H\u0001\"\u0004\b\u0000\u0010\u0003\"\u0004\b\u0001\u0010\u00012\u000e\u0010\u0004\u001a\n \u0002*\u0004\u0018\u0001H\u0003H\u0003H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"<anonymous>", "Y", "kotlin.jvm.PlatformType", "X", "it", "apply", "(Ljava/lang/Object;)Ljava/lang/Object;", "androidx/lifecycle/TransformationsKt$map$1"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class p<I, O> implements Function {
        public p() {
        }

        @Override // androidx.arch.core.util.Function
        public final Uri apply(LiveSummary liveSummary) {
            String avatar = liveSummary.getAvatar();
            if (avatar != null) {
                Intrinsics.checkNotNullExpressionValue(avatar, "avatar");
                return PlayerViewModel.this.q0().j(avatar);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$startStreamChatListening$1", f = "PlayerViewModel.kt", i = {}, l = {386}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class q extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f53773a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: PlayerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$startStreamChatListening$1$1", f = "PlayerViewModel.kt", i = {0}, l = {388, 391}, m = "invokeSuspend", n = {"it"}, s = {"I$0"})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<Integer, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f53775a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ int f53776b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ PlayerViewModel f53777c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: PlayerViewModel.kt */
            @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
            /* renamed from: com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$q$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0445a extends Lambda implements Function0<Unit> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ PlayerViewModel f53778a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ int f53779b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0445a(PlayerViewModel playerViewModel, int i4) {
                    super(0);
                    this.f53778a = playerViewModel;
                    this.f53779b = i4;
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                @Override // kotlin.jvm.functions.Function0
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    this.f53778a.K(this.f53779b);
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: PlayerViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat;", "chat", "", "a", "(Lcom/im/freechat/shared/entities/chat/Chat;)V"}, k = 3, mv = {1, 7, 1})
            /* loaded from: classes3.dex */
            public static final class b extends Lambda implements Function1<Chat, Unit> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ PlayerViewModel f53780a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                b(PlayerViewModel playerViewModel) {
                    super(1);
                    this.f53780a = playerViewModel;
                }

                public final void a(@m8.h Chat chat) {
                    this.f53780a.r0().postValue(Integer.valueOf(chat != null ? chat.getUnreadCount() : 0));
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Chat chat) {
                    a(chat);
                    return Unit.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(PlayerViewModel playerViewModel, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f53777c = playerViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f53777c, continuation);
                aVar.f53776b = ((Number) obj).intValue();
                return aVar;
            }

            @m8.h
            public final Object h(int i4, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(Integer.valueOf(i4), continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Integer num, Continuation<? super Unit> continuation) {
                return h(num.intValue(), continuation);
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x0055 A[RETURN] */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r7) {
                /*
                    r6 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    int r1 = r6.f53775a
                    r2 = 2
                    r3 = 1
                    if (r1 == 0) goto L25
                    if (r1 == r3) goto L1a
                    if (r1 != r2) goto L12
                    kotlin.ResultKt.throwOnFailure(r7)
                    goto L64
                L12:
                    java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r7.<init>(r0)
                    throw r7
                L1a:
                    int r1 = r6.f53776b
                    kotlin.ResultKt.throwOnFailure(r7)
                    kotlin.Result r7 = (kotlin.Result) r7
                    r7.m79unboximpl()
                    goto L42
                L25:
                    kotlin.ResultKt.throwOnFailure(r7)
                    int r1 = r6.f53776b
                    if (r1 == 0) goto L56
                    com.im.freechat.sdk.a r7 = com.im.freechat.sdk.SDKManager.d()
                    com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$q$a$a r4 = new com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$q$a$a
                    com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel r5 = r6.f53777c
                    r4.<init>(r5, r1)
                    r6.f53776b = r1
                    r6.f53775a = r3
                    java.lang.Object r7 = r7.H(r1, r4, r6)
                    if (r7 != r0) goto L42
                    return r0
                L42:
                    com.im.freechat.sdk.a r7 = com.im.freechat.sdk.SDKManager.d()
                    com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$q$a$b r3 = new com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$q$a$b
                    com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel r4 = r6.f53777c
                    r3.<init>(r4)
                    r6.f53775a = r2
                    java.lang.Object r7 = r7.u(r1, r3, r6)
                    if (r7 != r0) goto L64
                    return r0
                L56:
                    com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel r7 = r6.f53777c
                    androidx.lifecycle.MutableLiveData r7 = r7.r0()
                    r0 = 0
                    java.lang.Integer r0 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r0)
                    r7.postValue(r0)
                L64:
                    kotlin.Unit r7 = kotlin.Unit.INSTANCE
                    return r7
                */
                throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel.q.a.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        q(Continuation<? super q> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new q(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((q) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f53773a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.t<Integer> y9 = PlayerViewModel.this.b0().y();
                a aVar = new a(PlayerViewModel.this, null);
                this.f53773a = 1;
                if (kotlinx.coroutines.flow.k.A(y9, aVar, this) == coroutine_suspended) {
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

    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$syncFanClubInfo$1", f = "PlayerViewModel.kt", i = {}, l = {199}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class r extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f53781a;

        r(Continuation<? super r> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new r(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((r) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f53781a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.user.a0 a0Var = PlayerViewModel.this.f53695l;
                Unit unit = Unit.INSTANCE;
                this.f53781a = 1;
                b10 = a0Var.b(unit, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            PlayerViewModel playerViewModel = PlayerViewModel.this;
            if (Result.m77isSuccessimpl(b10)) {
                playerViewModel.U().postValue((FanClubInfoBean) b10);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$syncUserMoney$1", f = "PlayerViewModel.kt", i = {}, l = {196}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class s extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f53783a;

        s(Continuation<? super s> continuation) {
            super(2, continuation);
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
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f53783a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.user.e0 e0Var = PlayerViewModel.this.f53692i;
                Unit unit = Unit.INSTANCE;
                this.f53783a = 1;
                if (e0Var.b(unit, this) == coroutine_suspended) {
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
    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$validatePaidRoom$1", f = "PlayerViewModel.kt", i = {0}, l = {227}, m = "invokeSuspend", n = {"anchorId"}, s = {"L$0"})
    /* loaded from: classes3.dex */
    public static final class t extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f53785a;

        /* renamed from: b  reason: collision with root package name */
        int f53786b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Integer f53787c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ PlayerViewModel f53788d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f53789e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t(Integer num, PlayerViewModel playerViewModel, String str, Continuation<? super t> continuation) {
            super(2, continuation);
            this.f53787c = num;
            this.f53788d = playerViewModel;
            this.f53789e = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new t(this.f53787c, this.f53788d, this.f53789e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((t) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            String str;
            boolean z9;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f53786b;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Integer num = this.f53787c;
                if (num == null) {
                    PrivateLimitBean value = this.f53788d.m0().getValue();
                    num = value != null ? Boxing.boxInt(value.getId()) : null;
                    if (num == null) {
                        return Unit.INSTANCE;
                    }
                }
                int intValue = num.intValue();
                LiveSummary value2 = this.f53788d.n0().getValue();
                String id = value2 != null ? value2.getId() : null;
                if (id == null) {
                    return Unit.INSTANCE;
                }
                com.qennnsad.aknkaksd.domain.usecase.room.b bVar = this.f53788d.f53697n;
                b.a aVar = new b.a(this.f53789e, intValue, "", id);
                this.f53785a = id;
                this.f53786b = 1;
                b10 = bVar.b(aVar, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                str = id;
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                str = (String) this.f53785a;
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            String str2 = this.f53789e;
            PlayerViewModel playerViewModel = this.f53788d;
            if (Result.m77isSuccessimpl(b10)) {
                PrivateCheckBean privateCheckBean = (PrivateCheckBean) b10;
                if (Intrinsics.areEqual(str2, "2")) {
                    z9 = playerViewModel.f53698o.e(str, privateCheckBean);
                } else {
                    z9 = privateCheckBean.getStream() != null;
                }
                if (z9) {
                    PrivateLimitBean.StreamBean stream = privateCheckBean.getStream();
                    Intrinsics.checkNotNullExpressionValue(stream, "it.stream");
                    new a.l(stream);
                } else {
                    playerViewModel.l(new a.c(null, Boxing.boxInt(R.string.room_ticket_validation_error), 1, null));
                }
            }
            PlayerViewModel playerViewModel2 = this.f53788d;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(b10);
            if (m73exceptionOrNullimpl != null) {
                playerViewModel2.l(new a.c(m73exceptionOrNullimpl, null, 2, null));
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel$verifyCurrentAgentChat$1", f = "PlayerViewModel.kt", i = {0}, l = {414}, m = "invokeSuspend", n = {"currentChatId"}, s = {"I$0"})
    /* loaded from: classes3.dex */
    public static final class u extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f53790a;

        /* renamed from: b  reason: collision with root package name */
        int f53791b;

        u(Continuation<? super u> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new u(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((u) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            int i4;
            Object obj2;
            StreamDeposit streamDeposit;
            Long ttl;
            Integer num;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.f53791b;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                long z9 = PlayerViewModel.this.b0().z();
                int x9 = PlayerViewModel.this.b0().x();
                long j4 = 0;
                if (z9 == 0) {
                    return Unit.INSTANCE;
                }
                TimeUnit timeUnit = TimeUnit.SECONDS;
                ConfigBean e4 = PlayerViewModel.this.b0().e();
                if (e4 != null && (streamDeposit = e4.getStreamDeposit()) != null && (ttl = streamDeposit.getTtl()) != null) {
                    j4 = ttl.longValue();
                }
                if (z9 + timeUnit.toMillis(j4) < System.currentTimeMillis()) {
                    PlayerViewModel.this.K(x9);
                    return Unit.INSTANCE;
                }
                com.qennnsad.aknkaksd.domain.usecase.room.h hVar = PlayerViewModel.this.f53706w;
                Unit unit = Unit.INSTANCE;
                this.f53790a = x9;
                this.f53791b = 1;
                Object b10 = hVar.b(unit, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                i4 = x9;
                obj2 = b10;
            } else if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                i4 = this.f53790a;
                ResultKt.throwOnFailure(obj);
                obj2 = ((Result) obj).m79unboximpl();
            }
            PlayerViewModel playerViewModel = PlayerViewModel.this;
            if (Result.m77isSuccessimpl(obj2) && ((num = (Integer) obj2) == null || i4 != num.intValue())) {
                playerViewModel.K(i4);
            }
            return Unit.INSTANCE;
        }
    }

    @u7.a
    public PlayerViewModel(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g g5.a localDataManager, @m8.g x4.a analytics, @m8.g com.qennnsad.aknkaksd.domain.usecase.room.n getPrivateLimitUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.user.e0 syncUserMoneyUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.other_user.j getUserInfoUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.other_user.g followUserUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.user.a0 syncMyFanClubInfoUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.user.h joinFanClubInfoUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.room.b checkPrivatePassUseCase, @m8.g com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog.e ticketRoomValidator, @m8.g com.qennnsad.aknkaksd.domain.usecase.room.q getShareDataUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.room.a0 sendDanmuUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.room.e0 sendGiftUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.anchor.i getPageListForAnchorUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.anchor.f getFollowAnchorUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.room.x pinMessageUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.room.t interruptDepositUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.room.h getCurrentAgentChatUseCase, @m8.g com.qennnsad.aknkaksd.data.websocket.j wsObjectPool, @m8.g com.qennnsad.aknkaksd.util.e0 fanClubUtil) {
        List emptyList;
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(getPrivateLimitUseCase, "getPrivateLimitUseCase");
        Intrinsics.checkNotNullParameter(syncUserMoneyUseCase, "syncUserMoneyUseCase");
        Intrinsics.checkNotNullParameter(getUserInfoUseCase, "getUserInfoUseCase");
        Intrinsics.checkNotNullParameter(followUserUseCase, "followUserUseCase");
        Intrinsics.checkNotNullParameter(syncMyFanClubInfoUseCase, "syncMyFanClubInfoUseCase");
        Intrinsics.checkNotNullParameter(joinFanClubInfoUseCase, "joinFanClubInfoUseCase");
        Intrinsics.checkNotNullParameter(checkPrivatePassUseCase, "checkPrivatePassUseCase");
        Intrinsics.checkNotNullParameter(ticketRoomValidator, "ticketRoomValidator");
        Intrinsics.checkNotNullParameter(getShareDataUseCase, "getShareDataUseCase");
        Intrinsics.checkNotNullParameter(sendDanmuUseCase, "sendDanmuUseCase");
        Intrinsics.checkNotNullParameter(sendGiftUseCase, "sendGiftUseCase");
        Intrinsics.checkNotNullParameter(getPageListForAnchorUseCase, "getPageListForAnchorUseCase");
        Intrinsics.checkNotNullParameter(getFollowAnchorUseCase, "getFollowAnchorUseCase");
        Intrinsics.checkNotNullParameter(pinMessageUseCase, "pinMessageUseCase");
        Intrinsics.checkNotNullParameter(interruptDepositUseCase, "interruptDepositUseCase");
        Intrinsics.checkNotNullParameter(getCurrentAgentChatUseCase, "getCurrentAgentChatUseCase");
        Intrinsics.checkNotNullParameter(wsObjectPool, "wsObjectPool");
        Intrinsics.checkNotNullParameter(fanClubUtil, "fanClubUtil");
        this.f53688e = sourceFactory;
        this.f53689f = localDataManager;
        this.f53690g = analytics;
        this.f53691h = getPrivateLimitUseCase;
        this.f53692i = syncUserMoneyUseCase;
        this.f53693j = getUserInfoUseCase;
        this.f53694k = followUserUseCase;
        this.f53695l = syncMyFanClubInfoUseCase;
        this.f53696m = joinFanClubInfoUseCase;
        this.f53697n = checkPrivatePassUseCase;
        this.f53698o = ticketRoomValidator;
        this.f53699p = getShareDataUseCase;
        this.f53700q = sendDanmuUseCase;
        this.f53701r = sendGiftUseCase;
        this.f53702s = getPageListForAnchorUseCase;
        this.f53703t = getFollowAnchorUseCase;
        this.f53704u = pinMessageUseCase;
        this.f53705v = interruptDepositUseCase;
        this.f53706w = getCurrentAgentChatUseCase;
        this.f53707x = wsObjectPool;
        this.f53708y = fanClubUtil;
        this.f53709z = new MutableLiveData<>();
        this.D = new MutableLiveData<>(localDataManager.D());
        this.E = new MutableLiveData<>(Boolean.FALSE);
        this.F = -1;
        this.G = -1;
        this.H = new MutableLiveData<>();
        MutableLiveData<LiveSummary> mutableLiveData = new MutableLiveData<>();
        this.I = mutableLiveData;
        this.J = new MutableLiveData<>();
        LiveData<Uri> map = Transformations.map(mutableLiveData, new p());
        Intrinsics.checkNotNullExpressionValue(map, "crossinline transform: (…p(this) { transform(it) }");
        this.K = map;
        this.L = o4.m.n(com.qennnsad.aknkaksd.util.u.e(localDataManager.f67821g), mutableLiveData, l.f53765a);
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.M = new MutableLiveData<>(emptyList);
        this.N = new MutableLiveData<>(localDataManager.h());
        this.O = new MutableLiveData<>(0);
        U0();
    }

    public static /* synthetic */ kotlinx.coroutines.j2 I0(PlayerViewModel playerViewModel, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        return playerViewModel.H0(z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K(int i4) {
        this.f53690g.d(EventSignature.APP_RECHARGE_DIALOG_FAILED, String.valueOf(i4));
        this.f53689f.Y(0, 0L);
    }

    public static /* synthetic */ kotlinx.coroutines.j2 M(PlayerViewModel playerViewModel, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        return playerViewModel.L(z9);
    }

    private final kotlinx.coroutines.j2 S0() {
        return j(new q(null));
    }

    public static /* synthetic */ kotlinx.coroutines.j2 Y0(PlayerViewModel playerViewModel, String str, Integer num, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            num = null;
        }
        return playerViewModel.X0(str, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.qennnsad.aknkaksd.presentation.ui.base.page.c c0() {
        com.qennnsad.aknkaksd.presentation.ui.base.page.c cVar = new com.qennnsad.aknkaksd.presentation.ui.base.page.c();
        cVar.g(z4.a.b(T()));
        return cVar;
    }

    public static /* synthetic */ void i0(PlayerViewModel playerViewModel, String str, String str2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            str2 = "";
        }
        playerViewModel.h0(str, str2);
    }

    @m8.g
    public final kotlinx.coroutines.j2 A0() {
        return j(new g(null));
    }

    @m8.g
    public final kotlinx.coroutines.j2 B0(@m8.g String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        return j(new h(uid, null));
    }

    public final void C0(@m8.g LiveAudienceListMsg msg) {
        List<AudienceInfo> plus;
        Intrinsics.checkNotNullParameter(msg, "msg");
        MutableLiveData<List<AudienceInfo>> mutableLiveData = this.M;
        List<AudienceInfo> adminList = msg.getAdminList();
        Intrinsics.checkNotNullExpressionValue(adminList, "msg.adminList");
        List<AudienceInfo> clientList = msg.getClientList();
        Intrinsics.checkNotNullExpressionValue(clientList, "msg.clientList");
        plus = CollectionsKt___CollectionsKt.plus((Collection) adminList, (Iterable) clientList);
        mutableLiveData.postValue(plus);
    }

    public final void D0(boolean z9) {
        this.B = 2;
        if (z9) {
            H0(true);
        } else {
            l(new a.k(R.string.stream_load_failed));
        }
    }

    public final void E0() {
        this.B = 1;
        this.A = SystemClock.elapsedRealtime();
    }

    @m8.g
    public final kotlinx.coroutines.j2 F0(int i4) {
        return j(new i(i4, this, null));
    }

    public final void G0(@m8.g ItemTypeAttrs selectedItem, @m8.g String content, @m8.g Function0<Unit> onSuccess) {
        Intrinsics.checkNotNullParameter(selectedItem, "selectedItem");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        PrivateLimitBean value = this.J.getValue();
        if (value != null) {
            l(a.j.f53721a);
            com.qennnsad.aknkaksd.domain.usecase.room.x xVar = this.f53704u;
            MutableLiveData<Boolean> d4 = d();
            String idX = value.getAnchor().getIdX();
            Intrinsics.checkNotNullExpressionValue(idX, "it.anchor.idX");
            int parseInt = Integer.parseInt(idX);
            String curroomnum = value.getAnchor().getCurroomnum();
            Intrinsics.checkNotNullExpressionValue(curroomnum, "it.anchor.curroomnum");
            h(xVar, d4, new x.a(parseInt, Integer.parseInt(curroomnum), selectedItem, content), new j(onSuccess));
        }
    }

    @m8.g
    public final kotlinx.coroutines.j2 H0(boolean z9) {
        return j(new k(z9, null));
    }

    public final void J(@m8.g List<? extends HotAnchorSummary> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        O().addAll(list);
        com.qennnsad.aknkaksd.util.o.f54868a.f(O());
    }

    public final void J0(@m8.g List<? extends HotAnchorSummary> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (T() != DistrictType.Followed) {
            LiveSummary value = this.I.getValue();
            Intrinsics.checkNotNull(value);
            String id = value.getId();
            Intrinsics.checkNotNullExpressionValue(id, "roomSummary.value!!.id");
            O().addAll(b5.a.n(list, id, false, 2, null));
        } else {
            O().addAll(list);
        }
        com.qennnsad.aknkaksd.util.o.f54868a.f(O());
    }

    @m8.g
    public final kotlinx.coroutines.j2 K0(@m8.g String roomId, @m8.g String content) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(content, "content");
        return j(new m(roomId, content, null));
    }

    @m8.g
    public final kotlinx.coroutines.j2 L(boolean z9) {
        return j(new b(z9, null));
    }

    public final void L0(@m8.g Gift gift, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(gift, "gift");
        LiveSummary value = this.I.getValue();
        if (value != null) {
            com.qennnsad.aknkaksd.domain.usecase.room.e0 e0Var = this.f53701r;
            String id = value.getId();
            Intrinsics.checkNotNullExpressionValue(id, "it.id");
            h(e0Var, null, new e0.a(id, gift, EventKt.roomTypeToName(value.getLimit().getPtid()), z9, i4), n.f53770a);
        }
    }

    public final void M0(int i4) {
        this.F = i4;
    }

    @m8.g
    public final List<t1> N() {
        StreamDeposit streamDeposit;
        ArrayList arrayList = new ArrayList();
        UserBean C = this.f53689f.C();
        if (C != null) {
            if (C.is_legend()) {
                arrayList.add(t1.a.f53995c);
            }
            ConfigBean e4 = this.f53689f.e();
            if (((e4 == null || (streamDeposit = e4.getStreamDeposit()) == null) ? false : Intrinsics.areEqual(streamDeposit.getEnable(), Boolean.TRUE)) && b5.a.h(C)) {
                Z0();
                S0();
                arrayList.add(new t1.b(0));
            }
        }
        return arrayList;
    }

    public final void N0(@m8.g DistrictType districtType) {
        Intrinsics.checkNotNullParameter(districtType, "<set-?>");
        this.P = districtType;
    }

    @m8.g
    public final List<LiveSummary> O() {
        List<LiveSummary> mutableList;
        List<HotAnchorSummary> c10 = z4.a.c(T());
        List<HotAnchorSummary> l10 = c10 != null ? b5.a.l(c10) : null;
        if (l10 == null) {
            l10 = CollectionsKt__CollectionsKt.emptyList();
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) l10);
        return mutableList;
    }

    public final void O0(boolean z9) {
        this.C = z9;
    }

    @m8.g
    public final kotlinx.coroutines.j2 P(boolean z9) {
        return j(new c(z9, this, null));
    }

    public final void P0(int i4) {
        this.B = i4;
    }

    @m8.g
    public final MutableLiveData<List<AudienceInfo>> Q() {
        return this.M;
    }

    public final void Q0(int i4) {
        this.G = i4;
    }

    public final boolean R() {
        return this.F >= this.G;
    }

    public final void R0(boolean z9, @m8.g String opponentId) {
        Intrinsics.checkNotNullParameter(opponentId, "opponentId");
        this.C = z9;
        h(this.f53693j, null, opponentId, new o());
    }

    public final int S() {
        return this.F;
    }

    @m8.g
    public final DistrictType T() {
        DistrictType districtType = this.P;
        if (districtType != null) {
            return districtType;
        }
        Intrinsics.throwUninitializedPropertyAccessException("districtType");
        return null;
    }

    @m8.g
    public final kotlinx.coroutines.j2 T0() {
        return j(new r(null));
    }

    @m8.g
    public final MutableLiveData<FanClubInfoBean> U() {
        return this.N;
    }

    @m8.g
    public final kotlinx.coroutines.j2 U0() {
        return j(new s(null));
    }

    @m8.g
    public final com.qennnsad.aknkaksd.util.e0 V() {
        return this.f53708y;
    }

    public final void V0(@m8.g FanInfoEvent event) {
        FanClubInfoBean fanClubInfoBean;
        Intrinsics.checkNotNullParameter(event, "event");
        MutableLiveData<FanClubInfoBean> mutableLiveData = this.N;
        FanClubInfoBean value = mutableLiveData.getValue();
        if (value == null || (fanClubInfoBean = com.qennnsad.aknkaksd.util.f0.a(value, event)) == null) {
            fanClubInfoBean = null;
        } else {
            this.f53689f.O(fanClubInfoBean);
        }
        mutableLiveData.setValue(fanClubInfoBean);
    }

    public final boolean W() {
        FanClubInfoBean value = this.N.getValue();
        return (value != null ? value.getFreeGifts() : 0) > 0;
    }

    @JvmOverloads
    @m8.g
    public final kotlinx.coroutines.j2 W0(@m8.g String passType) {
        Intrinsics.checkNotNullParameter(passType, "passType");
        return Y0(this, passType, null, 2, null);
    }

    public final boolean X() {
        return this.F < O().size() - 1;
    }

    @JvmOverloads
    @m8.g
    public final kotlinx.coroutines.j2 X0(@m8.g String passType, @m8.h Integer num) {
        Intrinsics.checkNotNullParameter(passType, "passType");
        return j(new t(num, this, passType, null));
    }

    public final boolean Y() {
        return R() ? X() : Z();
    }

    public final boolean Z() {
        return this.F > 0;
    }

    @m8.g
    public final kotlinx.coroutines.j2 Z0() {
        return j(new u(null));
    }

    public final boolean a0() {
        String id;
        LiveSummary value = this.I.getValue();
        if (value == null || (id = value.getId()) == null) {
            return false;
        }
        return this.f53698o.d(id);
    }

    @m8.g
    public final g5.a b0() {
        return this.f53689f;
    }

    @m8.g
    public final MutableLiveData<Boolean> d0() {
        return this.E;
    }

    public final long e0() {
        if (this.A == 0) {
            return 0L;
        }
        return SystemClock.elapsedRealtime() - this.A;
    }

    public final int f0() {
        return this.B;
    }

    public final int g0() {
        return this.G;
    }

    public final void h0(@m8.g String type, @m8.g String password) {
        PrivateLimitBean value;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(password, "password");
        LiveSummary value2 = this.I.getValue();
        String id = value2 != null ? value2.getId() : null;
        if (id == null || (value = this.J.getValue()) == null) {
            return;
        }
        h(this.f53697n, d(), new b.a(type, value.getId(), password, id), new d(type, this, id));
    }

    @m8.g
    public final MutableLiveData<RoomAdBean> j0() {
        return this.f53709z;
    }

    @m8.g
    public final LiveData<Uri> k0() {
        return this.K;
    }

    @m8.g
    public final LiveData<Boolean> l0() {
        return this.L;
    }

    @m8.g
    public final MutableLiveData<PrivateLimitBean> m0() {
        return this.J;
    }

    @m8.g
    public final MutableLiveData<LiveSummary> n0() {
        return this.I;
    }

    @m8.g
    public final MutableLiveData<UserInfo> o0() {
        return this.H;
    }

    @m8.g
    public final kotlinx.coroutines.j2 p0() {
        return j(new e(null));
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m q0() {
        return this.f53688e;
    }

    @m8.g
    public final MutableLiveData<Integer> r0() {
        return this.O;
    }

    @m8.h
    public final UserMoney s0() {
        return this.D.getValue();
    }

    @m8.g
    public final MutableLiveData<UserMoney> t0() {
        return this.D;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.websocket.j u0() {
        return this.f53707x;
    }

    public final void v0(@m8.g LiveSummary item, int i4) {
        Intrinsics.checkNotNullParameter(item, "item");
        O().add(i4, item);
        com.qennnsad.aknkaksd.util.o.f54868a.f(O());
    }

    @m8.g
    public final kotlinx.coroutines.j2 w0(int i4) {
        return j(new f(i4, null));
    }

    public final boolean x0() {
        FanClubInfoBean value = this.N.getValue();
        String valueOf = String.valueOf(value != null ? Long.valueOf(value.getFanOf()) : null);
        LiveSummary value2 = this.I.getValue();
        return Intrinsics.areEqual(valueOf, value2 != null ? value2.getId() : null);
    }

    public final boolean y0() {
        return this.C;
    }

    public final boolean z0() {
        LiveSummary value = this.I.getValue();
        String curroomnum = value != null ? value.getCurroomnum() : null;
        if (curroomnum == null) {
            return false;
        }
        LocalRoomMsg q9 = this.f53689f.q();
        if (Intrinsics.areEqual(q9 != null ? q9.getRoomId() : null, curroomnum)) {
            return q9.getRole() == RoomRole.RoomAdmin || q9.getRole() == RoomRole.SuperAdmin || q9.getRole() == RoomRole.ShowAdmin;
        }
        return false;
    }
}
