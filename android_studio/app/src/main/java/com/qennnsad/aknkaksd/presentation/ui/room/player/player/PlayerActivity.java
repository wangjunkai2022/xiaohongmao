package com.qennnsad.aknkaksd.presentation.ui.room.player.player;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.Chronometer;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextSwitcher;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.gson.Gson;
import com.im.freechat.sdk.SDKManager;
import com.ksyun.media.streamer.logstats.StatsConstant;
import com.opensource.svgaplayer.SVGAImageView;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.analytics.data.events.Screen;
import com.qennnsad.aknkaksd.data.bean.Danmu;
import com.qennnsad.aknkaksd.data.bean.LiveSummary;
import com.qennnsad.aknkaksd.data.bean.WatermarkBean;
import com.qennnsad.aknkaksd.data.bean.fanclub.FanClubInfoBean;
import com.qennnsad.aknkaksd.data.bean.fanclub.JoinFanClubBean;
import com.qennnsad.aknkaksd.data.bean.gift.Gift;
import com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.data.bean.me.UserMoney;
import com.qennnsad.aknkaksd.data.bean.pk.JoinPkSuccessMsg;
import com.qennnsad.aknkaksd.data.bean.pk.PkBroadcastMsg;
import com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean;
import com.qennnsad.aknkaksd.data.bean.room.eyecatching.PinnedMessageBean;
import com.qennnsad.aknkaksd.data.bean.room.eyecatching.PinnedMessageListEvent;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.data.bean.websocket.AudienceInfo;
import com.qennnsad.aknkaksd.data.bean.websocket.BlockMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.ChargeTimeRoomMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.ErrorMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.FanInfoEvent;
import com.qennnsad.aknkaksd.data.bean.websocket.JumpType;
import com.qennnsad.aknkaksd.data.bean.websocket.LiveAudienceListMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.LocalRoomMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.PeerageLogin;
import com.qennnsad.aknkaksd.data.bean.websocket.RoomAdBean;
import com.qennnsad.aknkaksd.data.bean.websocket.RoomPublicMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.SendGiftMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.SystemMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.SystemWelcome;
import com.qennnsad.aknkaksd.data.bean.websocket.UserPublicMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.WsBleDeviceMsg;
import com.qennnsad.aknkaksd.presentation.common.l;
import com.qennnsad.aknkaksd.presentation.module.contributors.ContributorsActivity;
import com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayDialog;
import com.qennnsad.aknkaksd.presentation.ui.MainContainerActivity;
import com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity;
import com.qennnsad.aknkaksd.presentation.ui.main.index.DistrictType;
import com.qennnsad.aknkaksd.presentation.ui.room.RoomFinishedFragment;
import com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.PurchaseItemListFragmentDialog;
import com.qennnsad.aknkaksd.presentation.ui.room.manage.RoomManageDialog;
import com.qennnsad.aknkaksd.presentation.ui.room.player.pk.MatchResult;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog.PrivateRoomFragment;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.t1;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.view.PubChatRecyclerView;
import com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f;
import com.qennnsad.aknkaksd.presentation.ui.room.rank.RoomSeatRankDialog;
import com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.StreamChatDialog;
import com.qennnsad.aknkaksd.presentation.ui.room.view.BlockTextView;
import com.qennnsad.aknkaksd.presentation.ui.room.view.PeerageLoginView;
import com.qennnsad.aknkaksd.presentation.ui.widget.carousel.LayoutCarousel;
import com.qennnsad.aknkaksd.presentation.ui.widget.giftView.GiftLayoutView;
import com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog;
import com.qennnsad.aknkaksd.util.ScrollableLayout;
import com.qennnsad.aknkaksd.util.animations.GiftAnimationUtil;
import e5.m4;
import e5.n4;
import e5.p4;
import e5.s4;
import io.github.rockerhieu.emojicon.c;
import io.github.rockerhieu.emojicon.emoji.Emojicon;
import io.github.rockerhieu.emojicon.f;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsKt;
import org.bouncycastle.i18n.ErrorBundle;
import org.bouncycastle.i18n.MessageBundle;
import timber.log.Timber;

/* compiled from: PlayerActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000\u009a\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b$\b\u0017\u0018\u0000 £\u00032\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0002¤\u0003B\t¢\u0006\u0006\b¡\u0003\u0010¢\u0003J\b\u0010\b\u001a\u00020\u0007H\u0002J\u0012\u0010\u000b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002J\b\u0010\f\u001a\u00020\u0007H\u0002J\u001a\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0013\u001a\u00020\u0007H\u0002J\b\u0010\u0014\u001a\u00020\u0007H\u0002J\b\u0010\u0015\u001a\u00020\u0007H\u0002J\b\u0010\u0016\u001a\u00020\u0007H\u0002J\b\u0010\u0017\u001a\u00020\u0007H\u0002J\b\u0010\u0018\u001a\u00020\u0007H\u0002J\u0010\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0018\u0010\"\u001a\u00020\u00072\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001fH\u0002J\b\u0010#\u001a\u00020\u0007H\u0002J\b\u0010$\u001a\u00020\u0007H\u0002J\b\u0010%\u001a\u00020\u0007H\u0002J\u0018\u0010)\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020'H\u0002J\b\u0010*\u001a\u00020\u0007H\u0002J\b\u0010+\u001a\u00020\u0007H\u0002J\b\u0010,\u001a\u00020\u0007H\u0002J\b\u0010-\u001a\u00020\u0007H\u0002J\b\u0010.\u001a\u00020\u0007H\u0002J\u0010\u00101\u001a\u0002002\u0006\u0010/\u001a\u00020 H\u0002J\b\u00102\u001a\u00020\u0007H\u0003J\u0010\u00104\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u000fH\u0002J\u0010\u00106\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u0019H\u0002J\b\u00107\u001a\u00020\u0007H\u0002J\b\u00108\u001a\u00020\u0007H\u0002J\b\u00109\u001a\u00020\u0007H\u0002J\u0012\u0010<\u001a\u00020\u00072\b\u0010;\u001a\u0004\u0018\u00010:H\u0002J\u0018\u0010?\u001a\u00020\u00072\u0006\u0010=\u001a\u0002002\u0006\u0010>\u001a\u00020\u000fH\u0002J\b\u0010@\u001a\u00020\u0007H\u0002J\u0010\u0010C\u001a\u00020\u00072\u0006\u0010B\u001a\u00020AH\u0002J\u0010\u0010F\u001a\u00020\u00072\u0006\u0010E\u001a\u00020DH\u0003J\u0010\u0010G\u001a\u00020\u00072\u0006\u0010E\u001a\u00020DH\u0002J\b\u0010H\u001a\u00020\u0007H\u0002J\u0010\u0010I\u001a\u00020\u00072\u0006\u0010E\u001a\u00020DH\u0002J\u0010\u0010L\u001a\u00020\u00072\u0006\u0010K\u001a\u00020JH\u0002J\b\u0010M\u001a\u00020\u0007H\u0002J\b\u0010N\u001a\u00020\u0007H\u0002J\u0010\u0010O\u001a\u00020\u00072\u0006\u0010E\u001a\u00020DH\u0002J\b\u0010P\u001a\u00020\u0007H\u0002J\b\u0010Q\u001a\u00020\u0007H\u0002J\b\u0010R\u001a\u00020\u0007H\u0002J\b\u0010S\u001a\u00020\u0007H\u0002J\u0010\u0010V\u001a\u00020\u00072\u0006\u0010U\u001a\u00020TH\u0002J\b\u0010W\u001a\u00020\u0007H\u0002J\u0018\u0010Z\u001a\u00020\u00072\u000e\u00103\u001a\n\u0012\u0004\u0012\u00020Y\u0018\u00010XH\u0002J\u001a\u0010]\u001a\u00020\u00072\u0006\u0010[\u001a\u00020\u000f2\b\u0010\\\u001a\u0004\u0018\u00010AH\u0002J\u0010\u0010_\u001a\u00020\u00072\u0006\u0010K\u001a\u00020^H\u0002J\u0010\u0010a\u001a\u00020\u00072\u0006\u0010`\u001a\u00020\u0019H\u0002J\u0010\u0010c\u001a\u00020\u00072\u0006\u0010b\u001a\u00020\u0019H\u0002J\b\u0010d\u001a\u00020\u0007H\u0003J\b\u0010e\u001a\u00020\u0007H\u0002J\u0010\u0010g\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020fH\u0002J\b\u0010h\u001a\u00020\u0007H\u0003J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\b\u0010j\u001a\u00020\u0007H\u0002J\u0018\u0010m\u001a\u00020\u00072\u0006\u0010k\u001a\u00020J2\u0006\u0010l\u001a\u00020\u0019H\u0002J\b\u0010n\u001a\u00020\u0007H\u0002J\b\u0010o\u001a\u00020\u0007H\u0002J\u0010\u0010r\u001a\u00020\u00072\u0006\u0010q\u001a\u00020pH\u0002J\b\u0010s\u001a\u00020\u0007H\u0002J\b\u0010t\u001a\u00020\u0007H\u0002J\b\u0010u\u001a\u00020\u0007H\u0002J\u0010\u0010v\u001a\u00020\u00072\u0006\u0010E\u001a\u00020JH\u0002J\b\u0010w\u001a\u00020\u0007H\u0002J\u0010\u0010y\u001a\u00020\u00072\u0006\u0010x\u001a\u00020\u0019H\u0002J\b\u0010z\u001a\u00020\u0007H\u0002J\u0010\u0010}\u001a\u00020\u00022\u0006\u0010|\u001a\u00020{H\u0016J\b\u0010~\u001a\u00020\u0019H\u0014J\u0012\u0010\u0081\u0001\u001a\u00020\u00072\u0007\u0010\u0080\u0001\u001a\u00020\u007fH\u0016J\u0013\u0010\u0084\u0001\u001a\u00020\u00072\b\u0010\u0083\u0001\u001a\u00030\u0082\u0001H\u0016J\t\u0010\u0085\u0001\u001a\u00020\u0007H\u0014J(\u0010\u008b\u0001\u001a\u00020\u00072\b\u0010\u0087\u0001\u001a\u00030\u0086\u00012\u0007\u0010\u0088\u0001\u001a\u00020\u00192\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u0089\u0001H\u0014J\u000e\u0010\u008d\u0001\u001a\u0007\u0012\u0002\b\u00030\u008c\u0001H\u0014J\t\u0010\u008e\u0001\u001a\u00020\u0007H\u0015J\t\u0010\u008f\u0001\u001a\u00020\u0007H\u0014J\t\u0010\u0090\u0001\u001a\u00020\u0007H\u0014J\t\u0010\u0091\u0001\u001a\u00020\u0007H\u0014J\t\u0010\u0092\u0001\u001a\u00020\u0007H\u0014J\t\u0010\u0093\u0001\u001a\u00020\u0007H\u0014J\t\u0010\u0094\u0001\u001a\u00020\u0007H\u0004J\t\u0010\u0095\u0001\u001a\u00020\u000fH\u0014J\t\u0010\u0096\u0001\u001a\u00020pH\u0014J\u0013\u0010\u0098\u0001\u001a\u00020\u00072\b\u0010\u0097\u0001\u001a\u00030\u0089\u0001H\u0014J\u0012\u0010\u009a\u0001\u001a\u00020\u00072\u0007\u0010\u0099\u0001\u001a\u000200H\u0016J\u0012\u0010\u009c\u0001\u001a\u00020\u00192\u0007\u0010\u009b\u0001\u001a\u000200H\u0016J\u0012\u0010\u009d\u0001\u001a\u00020\u00192\u0007\u0010\u009b\u0001\u001a\u000200H\u0016J\t\u0010\u009e\u0001\u001a\u000200H\u0016J\t\u0010\u009f\u0001\u001a\u00020\u0007H\u0014J\u0013\u0010 \u0001\u001a\u00020\u00072\b\u0010K\u001a\u0004\u0018\u00010JH\u0014J\t\u0010¡\u0001\u001a\u00020\u0007H\u0014J\t\u0010¢\u0001\u001a\u00020\u0007H\u0014J\u0012\u0010¤\u0001\u001a\u00020\u00072\u0007\u0010£\u0001\u001a\u00020\u0019H\u0014J&\u0010§\u0001\u001a\u00020\u00072\u0007\u0010¥\u0001\u001a\u0002002\u0007\u0010¦\u0001\u001a\u0002002\t\u00103\u001a\u0005\u0018\u00010\u0086\u0001H\u0014J\u000b\u0010¨\u0001\u001a\u0004\u0018\u00010\u000fH\u0014J\u000b\u0010©\u0001\u001a\u0004\u0018\u00010\u000fH\u0016J\f\u0010«\u0001\u001a\u0005\u0018\u00010ª\u0001H\u0014J\u0013\u0010®\u0001\u001a\u00020\u00072\b\u0010\u00ad\u0001\u001a\u00030¬\u0001H\u0014J\u0013\u0010°\u0001\u001a\u00020\u00072\b\u0010\u00ad\u0001\u001a\u00030¯\u0001H\u0014J\u0013\u0010²\u0001\u001a\u00020\u00072\b\u0010\u00ad\u0001\u001a\u00030±\u0001H\u0014J\u0012\u0010´\u0001\u001a\u00020\u00072\u0007\u0010³\u0001\u001a\u000200H\u0014J\t\u0010µ\u0001\u001a\u000200H\u0014J\u0012\u0010·\u0001\u001a\u00020\u00072\u0007\u0010¶\u0001\u001a\u000200H\u0014J\u0013\u0010º\u0001\u001a\u00020\u00072\b\u0010¹\u0001\u001a\u00030¸\u0001H\u0014J\u0013\u0010½\u0001\u001a\u00020\u00072\b\u0010¼\u0001\u001a\u00030»\u0001H\u0014J\u001b\u0010À\u0001\u001a\u00020\u00072\u0007\u0010¾\u0001\u001a\u00020\u00192\u0007\u0010¿\u0001\u001a\u00020\u000fH\u0014J\u0012\u0010Â\u0001\u001a\u00020\u00072\u0007\u0010Á\u0001\u001a\u00020\u0019H\u0014J\u001b\u0010Å\u0001\u001a\u00020\u00072\u0007\u0010Ã\u0001\u001a\u00020\u000f2\u0007\u0010Ä\u0001\u001a\u000200H\u0014J\u0013\u0010È\u0001\u001a\u00020\u00072\b\u0010Ç\u0001\u001a\u00030Æ\u0001H\u0016J\u0012\u0010Ê\u0001\u001a\u00020\u00072\u0007\u0010É\u0001\u001a\u000200H\u0014J\u001c\u0010Ì\u0001\u001a\u00020\u00072\u0006\u0010[\u001a\u0002002\t\u0010Ë\u0001\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010Î\u0001\u001a\u00020\u00072\u0007\u0010K\u001a\u00030Í\u0001H\u0014J\u0014\u0010Ð\u0001\u001a\u00020\u00072\t\u0010Ï\u0001\u001a\u0004\u0018\u00010\u000fH\u0016J\u0013\u0010Ó\u0001\u001a\u00020\u00072\b\u0010Ò\u0001\u001a\u00030Ñ\u0001H\u0014J)\u0010Ö\u0001\u001a\u00020\u00072\u0006\u0010K\u001a\u00020J2\f\b\u0002\u0010Õ\u0001\u001a\u0005\u0018\u00010Ô\u00012\b\b\u0002\u0010l\u001a\u00020\u0019H\u0004J\u0013\u0010Ø\u0001\u001a\u00020\u00072\b\u0010\u00ad\u0001\u001a\u00030×\u0001H\u0014J\u001e\u0010Ú\u0001\u001a\u00020\u00072\u0006\u0010b\u001a\u00020\u00192\u000b\b\u0002\u0010Ù\u0001\u001a\u0004\u0018\u00010\u000fH\u0007J\u0013\u0010Ý\u0001\u001a\u00020\u00072\b\u0010Ü\u0001\u001a\u00030Û\u0001H\u0014J\u0013\u0010ß\u0001\u001a\u00020\u00072\b\u0010\u00ad\u0001\u001a\u00030Þ\u0001H\u0014J\t\u0010à\u0001\u001a\u00020\u0007H\u0016J\u0013\u0010â\u0001\u001a\u00020\u00072\b\u0010\u00ad\u0001\u001a\u00030á\u0001H\u0014J\u0013\u0010ä\u0001\u001a\u00020\u00072\b\u0010\u00ad\u0001\u001a\u00030ã\u0001H\u0014J\u0011\u0010å\u0001\u001a\u00020\u00072\u0006\u0010[\u001a\u00020\u000fH\u0014J\u0011\u0010æ\u0001\u001a\u00020\u00072\u0006\u0010[\u001a\u00020\u000fH\u0014J\t\u0010ç\u0001\u001a\u00020\u0007H\u0016J\t\u0010è\u0001\u001a\u00020\u0007H\u0016J\u0012\u0010ê\u0001\u001a\u00020\u00072\u0007\u0010\n\u001a\u00030é\u0001H\u0014J\u0012\u0010ì\u0001\u001a\u00020\u00072\u0007\u0010ë\u0001\u001a\u00020\u0019H\u0014J\t\u0010í\u0001\u001a\u00020\u0007H\u0016J\u001d\u0010ð\u0001\u001a\u00020\u00072\u0006\u0010K\u001a\u00020J2\n\u0010ï\u0001\u001a\u0005\u0018\u00010î\u0001H\u0016R*\u0010ø\u0001\u001a\u00030ñ\u00018\u0004@\u0004X\u0084.¢\u0006\u0018\n\u0006\bò\u0001\u0010ó\u0001\u001a\u0006\bô\u0001\u0010õ\u0001\"\u0006\bö\u0001\u0010÷\u0001R\u001a\u0010û\u0001\u001a\u00030ù\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÌ\u0001\u0010ú\u0001R\u001a\u0010ÿ\u0001\u001a\u00030ü\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bý\u0001\u0010þ\u0001R\u0018\u0010\u0083\u0002\u001a\u00030\u0080\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0081\u0002\u0010\u0082\u0002R\u0018\u0010\u0087\u0002\u001a\u00030\u0084\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0085\u0002\u0010\u0086\u0002R\u0018\u0010\u008b\u0002\u001a\u00030\u0088\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0089\u0002\u0010\u008a\u0002R\u001c\u0010\u008f\u0002\u001a\u0005\u0018\u00010\u008c\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0002\u0010\u008e\u0002R\u001a\u0010\u0093\u0002\u001a\u00030\u0090\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0091\u0002\u0010\u0092\u0002R)\u0010\u009a\u0002\u001a\u0002008\u0004@\u0004X\u0084\u000e¢\u0006\u0018\n\u0006\b\u0094\u0002\u0010\u0095\u0002\u001a\u0006\b\u0096\u0002\u0010\u0097\u0002\"\u0006\b\u0098\u0002\u0010\u0099\u0002R*\u0010¢\u0002\u001a\u00030\u009b\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u009c\u0002\u0010\u009d\u0002\u001a\u0006\b\u009e\u0002\u0010\u009f\u0002\"\u0006\b \u0002\u0010¡\u0002R*\u0010ª\u0002\u001a\u00030£\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b¤\u0002\u0010¥\u0002\u001a\u0006\b¦\u0002\u0010§\u0002\"\u0006\b¨\u0002\u0010©\u0002R*\u0010²\u0002\u001a\u00030«\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b¬\u0002\u0010\u00ad\u0002\u001a\u0006\b®\u0002\u0010¯\u0002\"\u0006\b°\u0002\u0010±\u0002R\u001a\u0010¶\u0002\u001a\u00030³\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b´\u0002\u0010µ\u0002R\u001a\u0010º\u0002\u001a\u00030·\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¸\u0002\u0010¹\u0002R\u0018\u0010¼\u0002\u001a\u00030\u0088\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b»\u0002\u0010\u008a\u0002R\u0018\u0010¿\u0002\u001a\u00030½\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÅ\u0001\u0010¾\u0002R\u0019\u0010À\u0002\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0001\u0010\u0095\u0002R\u001a\u0010Á\u0002\u001a\u00030½\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b´\u0001\u0010¾\u0002R\u0019\u0010Ä\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0002\u0010Ã\u0002R!\u0010Ç\u0002\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÅ\u0002\u0010Æ\u0002R!\u0010É\u0002\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0002\u0010Æ\u0002R!\u0010Ë\u0002\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0002\u0010Æ\u0002R\u0019\u0010Í\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÌ\u0002\u0010Ã\u0002R\u0019\u0010Î\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÓ\u0001\u0010Ã\u0002R\u001c\u0010Ò\u0002\u001a\u0005\u0018\u00010Ï\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÐ\u0002\u0010Ñ\u0002R\u0019\u0010Ó\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010Ã\u0002R\u0019\u0010Ô\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010Ã\u0002R\u0019\u0010\u0088\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010Ã\u0002R\u001c\u0010Ø\u0002\u001a\u0005\u0018\u00010Õ\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÖ\u0002\u0010×\u0002R\u0019\u0010Ú\u0002\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÙ\u0002\u0010\u0095\u0002R\u001c\u0010Þ\u0002\u001a\u0005\u0018\u00010Û\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÜ\u0002\u0010Ý\u0002R\u0019\u0010à\u0002\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bß\u0002\u0010\u0095\u0002R\u0019\u0010â\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bá\u0002\u0010Ã\u0002R\u001c\u0010ä\u0002\u001a\u0005\u0018\u00010½\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bã\u0002\u0010¾\u0002R\u0019\u0010æ\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bå\u0002\u0010Ã\u0002R\u001a\u0010ê\u0002\u001a\u00030ç\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bè\u0002\u0010é\u0002R\u001a\u0010î\u0002\u001a\u00030ë\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bì\u0002\u0010í\u0002R\u001e\u0010ò\u0002\u001a\t\u0012\u0004\u0012\u00020T0ï\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bð\u0002\u0010ñ\u0002R\u001c\u0010ö\u0002\u001a\u0005\u0018\u00010ó\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bô\u0002\u0010õ\u0002R\u0019\u0010ø\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b÷\u0002\u0010Ã\u0002R\u0019\u0010ú\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bù\u0002\u0010Ã\u0002R\u0019\u0010ü\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bû\u0002\u0010Ã\u0002R\u001c\u0010\u0080\u0003\u001a\u0005\u0018\u00010ý\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bþ\u0002\u0010ÿ\u0002R\u001c\u0010\u0084\u0003\u001a\u0005\u0018\u00010\u0081\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0003\u0010\u0083\u0003R\u0019\u0010\u0086\u0003\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0003\u0010\u0095\u0002R\u001c\u0010\u0088\u0003\u001a\u0005\u0018\u00010Û\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0003\u0010Ý\u0002R\u001a\u0010\u008a\u0003\u001a\u00030Û\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0089\u0003\u0010Ý\u0002R\u001a\u0010\u008c\u0003\u001a\u00030Û\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u008b\u0003\u0010Ý\u0002R\u0019\u0010\u008e\u0003\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0003\u0010Ã\u0002R\u001b\u0010\u0091\u0003\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0003\u0010\u0090\u0003R\u001a\u0010\u0093\u0003\u001a\u00030½\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0003\u0010¾\u0002R\u0017\u0010\u0096\u0003\u001a\u00020\u00198BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0094\u0003\u0010\u0095\u0003R\u0017\u0010\u0098\u0003\u001a\u00020\u00198BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0097\u0003\u0010\u0095\u0003R\u0017\u0010\u009a\u0003\u001a\u00020\u00198BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0099\u0003\u0010\u0095\u0003R\u0017\u0010\u009c\u0003\u001a\u00020\u00198BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u009b\u0003\u0010\u0095\u0003R\u0017\u0010\u009e\u0003\u001a\u00020\u00198BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u009d\u0003\u0010\u0095\u0003R\u0017\u0010 \u0003\u001a\u00020\u00198BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u009f\u0003\u0010\u0095\u0003¨\u0006¥\u0003"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;", "Le5/i;", "Lio/github/rockerhieu/emojicon/f$d;", "Lio/github/rockerhieu/emojicon/c$a;", "Lcom/qennnsad/aknkaksd/presentation/ui/base/p;", "Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;", "", "m5", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;", "event", "G5", "l7", "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;", com.alipay.sdk.packet.d.f6907q, "", "button", "V5", "U5", "R5", "W6", "N4", "v4", "l6", "y6", "", "visible", "O6", "Landroid/view/ViewGroup;", "overlay", "f6", "", "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;", "giftList", "I5", "s7", "c5", "X5", MessageBundle.TITLE_ENTRY, "", "price", "K5", "Y4", "m7", "n7", "o7", "W5", "selectedGift", "", "t4", "T4", "data", "A4", "forPkOpponent", "r4", "T6", "R6", "u4", "Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;", StatsConstant.FUNCTION_WATERMARK, "A6", "position", "content", "s4", "z6", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;", "streamFromPrivateCharge", "L6", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;", "limitBean", "J6", "M6", "D4", "z4", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "info", "N5", "I6", "y4", "g5", "b6", "F4", "P4", "C4", "Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;", "usermsg", "Q5", "Y5", "", "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;", "L5", "type", "streamBean", "P5", "Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;", "J5", "success", "H5", "show", "C6", "e5", "k5", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;", "T5", "Q4", "e6", "E4", "user", "isPkOpponentClicked", "N6", "K6", "w4", "", "seconds", "r7", "O4", "Z5", "S5", "M4", "x4", kotlinx.coroutines.u0.f86831d, "M5", "c6", "Landroid/view/LayoutInflater;", "layoutInflater", "B4", "E5", "Lio/github/rockerhieu/emojicon/emoji/Emojicon;", "emojicon", ContextChain.TAG_INFRA, "Landroid/view/View;", "v", "onEmojiconBackspaceClicked", "L0", "Landroid/content/Intent;", "intent", "isFromNewIntent", "Landroid/os/Bundle;", "savedInstanceState", "C0", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "n0", "r0", "P0", "onResume", "onPause", "onStop", "onDestroy", "p7", "N1", "M1", "outState", "onSaveInstanceState", "newPosition", "w", "currentPosition", "j", "k", "P1", "H6", "h5", "E2", "J1", "byCloseButton", "G4", "requestCode", "resultCode", "onActivityResult", "O1", "K1", "Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;", "L1", "Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;", "msg", "t1", "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;", "F2", "Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;", "w1", "coins", "y1", "I1", "coinbalance", "z1", "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;", "bleMsg", "r1", "Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;", "chargeTimeRoomMsg", "x1", "ismoney", "rankstr", "v1", "isfree", "s1", "ptid", "plid", "p1", "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;", "sendGiftMsg", "G2", "balance", "s2", "url", "L", "Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;", "q2", "fromGameCenterAddress", "A0", "Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;", "localRoomMsg", "x2", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;", TypedValues.Transition.S_FROM, "P6", "Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;", "q1", "bad_content", "E6", "Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;", "peerageLogin", "u1", "Lcom/qennnsad/aknkaksd/data/bean/websocket/BlockMsg;", "G1", "onBackPressed", "Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;", "w2", "Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;", "r2", "v2", "u2", "q", "h", "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageListEvent;", "t2", "bySwipe", "F5", "n", "Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;", PlayerActivity.f53645i3, "V6", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;", "H", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;", "L4", "()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;", "k6", "(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;)V", "viewModel", "Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;", "Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;", "giftAnimationUtil", "Lcom/qennnsad/aknkaksd/util/animations/f;", "M", "Lcom/qennnsad/aknkaksd/util/animations/f;", "peerageAnimationUtil", "Lcom/google/gson/Gson;", "N", "Lcom/google/gson/Gson;", "mGson", "Ljava/text/DecimalFormat;", "O", "Ljava/text/DecimalFormat;", "decimalFormat", "Landroid/os/Handler;", "P", "Landroid/os/Handler;", "bleHandler", "Lcom/qennnsad/aknkaksd/util/sound/a;", "Q", "Lcom/qennnsad/aknkaksd/util/sound/a;", "mSoundUtils", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;", "R", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;", "pkPlayerManager", ExifInterface.LATITUDE_SOUTH, "I", "I4", "()I", "h6", "(I)V", "mPreviewTime", "Lcom/qennnsad/aknkaksd/data/repository/m;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/qennnsad/aknkaksd/data/repository/m;", "K4", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "j6", "(Lcom/qennnsad/aknkaksd/data/repository/m;)V", "sourceFactory", "Lcom/qennnsad/aknkaksd/util/e0;", "U", "Lcom/qennnsad/aknkaksd/util/e0;", "H4", "()Lcom/qennnsad/aknkaksd/util/e0;", "d6", "(Lcom/qennnsad/aknkaksd/util/e0;)V", "fanClubUtil", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;", "J4", "()Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;", "i6", "(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;)V", "msgUtils", "Lcom/qennnsad/aknkaksd/presentation/ui/room/b;", ExifInterface.LONGITUDE_WEST, "Lcom/qennnsad/aknkaksd/presentation/ui/room/b;", "audienceAdapter", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;", "b1", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;", "chatAdapter", "g1", "previewHandler", "Ljava/lang/Runnable;", "Ljava/lang/Runnable;", "unblockRunnable", "oldcost", "runnableStop1", "T1", "Z", "danmuopenis", "V1", "Ljava/util/List;", "mGifts", "b2", "fanClubFreeGifts", "g2", "fanClubPaidGifts", "p2", "chatAtTheBottom", "subtitlesAvailable", "Lio/reactivex/disposables/c;", "y2", "Lio/reactivex/disposables/c;", "mWatermarkSubscription", "wentOutToCompetitorRightRoom", "hadDisconnection", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;", "H2", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;", "receivedPinMessageAdapter", "I2", "restoredPos", "Landroid/view/animation/Animation;", "J2", "Landroid/view/animation/Animation;", "mLoadingBAnim", "K2", "giftComboCount", "L2", "anchorOfflineHandledInLimit", "M2", "startPlaySecondaryTask", "N2", "isPreviewInited", "Lcom/qennnsad/aknkaksd/util/danmu/a;", "O2", "Lcom/qennnsad/aknkaksd/util/danmu/a;", "mDanmuControl", "Lcom/qennnsad/aknkaksd/util/danmu/c;", "P2", "Lcom/qennnsad/aknkaksd/util/danmu/c;", "mLevelDanmuControl", "Ljava/util/ArrayList;", "Q2", "Ljava/util/ArrayList;", "animationMsgs", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;", "R2", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;", "sidePanelButtonAdapter", "S2", "isRunning", "T2", "isTimer", "U2", "isDead", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;", "V2", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;", "privateRoomDialogFragment", "Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;", "W2", "Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;", "roomFinishedFragment", "X2", "mVideoScaleIndex", "Y2", "shakeShareAnimation", "Z2", "shakeGameAnimation", "a3", "shakeFanClubAnimation", "b3", "isBluetoothMsgWasReceived", "c3", "Ljava/lang/String;", "nobleItemTitleSelected", "d3", "mPreviewTimeRunnable", "A5", "()Z", "isOrientationLandscape", "C5", "isPkExpected", "y5", "isFanGiftsTabEnabled", "D5", "isPrivateRoomDialogShown", "B5", "isPinnedEnabled", "z5", "isLeftStreamStarted", "<init>", "()V", "e3", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public class PlayerActivity extends Hilt_PlayerActivity<e5.i> implements f.d, c.a, com.qennnsad.aknkaksd.presentation.ui.base.p, ScrollableLayout.a {
    @m8.g

    /* renamed from: e3  reason: collision with root package name */
    public static final a f53641e3 = new a(null);

    /* renamed from: f3  reason: collision with root package name */
    public static final int f53642f3 = 101;
    @m8.g

    /* renamed from: g3  reason: collision with root package name */
    public static final String f53643g3 = "EXTRA_PK_FINISHED_ON_THE_RIGHT";
    @m8.g

    /* renamed from: h3  reason: collision with root package name */
    private static final String f53644h3 = "anchor";
    @m8.g

    /* renamed from: i3  reason: collision with root package name */
    private static final String f53645i3 = "district";
    private boolean E2;
    private boolean F2;
    private boolean G2;
    protected PlayerViewModel H;
    @m8.h
    private com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.receive.a H2;
    private e5.f3 I;
    private int I2;
    private p4 J;
    @m8.h
    private Animation J2;
    private n4 K;
    private int K2;
    private GiftAnimationUtil L;
    private boolean L2;
    private com.qennnsad.aknkaksd.util.animations.f M;
    @m8.h
    private Runnable M2;
    private boolean N2;
    private com.qennnsad.aknkaksd.util.danmu.a O2;
    private com.qennnsad.aknkaksd.util.danmu.c P2;
    @m8.h
    private com.qennnsad.aknkaksd.util.sound.a Q;
    @m8.g
    private final ArrayList<UserPublicMsg> Q2;
    private com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g R;
    @m8.h
    private v1 R2;
    private int S;
    private volatile boolean S2;
    @u7.a
    public com.qennnsad.aknkaksd.data.repository.m T;
    private boolean T1;
    private boolean T2;
    @u7.a
    public com.qennnsad.aknkaksd.util.e0 U;
    private boolean U2;
    @u7.a
    public com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c V;
    @m8.h
    private List<? extends Gift> V1;
    @m8.h
    private PrivateRoomFragment V2;
    private com.qennnsad.aknkaksd.presentation.ui.room.b W;
    @m8.h
    private RoomFinishedFragment W2;
    private int X2;
    @m8.h
    private Animation Y2;
    private Animation Z2;

    /* renamed from: a3  reason: collision with root package name */
    private Animation f53646a3;

    /* renamed from: b1  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f f53647b1;
    @m8.h

    /* renamed from: b2  reason: collision with root package name */
    private List<? extends Gift> f53648b2;

    /* renamed from: b3  reason: collision with root package name */
    private boolean f53649b3;
    @m8.h

    /* renamed from: c3  reason: collision with root package name */
    private String f53650c3;
    @m8.g

    /* renamed from: d3  reason: collision with root package name */
    private Runnable f53651d3;
    @m8.g

    /* renamed from: g1  reason: collision with root package name */
    private final Handler f53652g1;
    @m8.h

    /* renamed from: g2  reason: collision with root package name */
    private List<? extends Gift> f53653g2;
    @m8.g

    /* renamed from: p1  reason: collision with root package name */
    private final Runnable f53654p1;

    /* renamed from: p2  reason: collision with root package name */
    private boolean f53655p2;

    /* renamed from: x1  reason: collision with root package name */
    private int f53656x1;

    /* renamed from: x2  reason: collision with root package name */
    private boolean f53657x2;
    @m8.g

    /* renamed from: y1  reason: collision with root package name */
    private Runnable f53658y1;
    @m8.h

    /* renamed from: y2  reason: collision with root package name */
    private io.reactivex.disposables.c f53659y2;
    @m8.g
    private final Gson N = new Gson();
    @m8.g
    private final DecimalFormat O = new DecimalFormat("#");
    @m8.g
    private final Handler P = new Handler(Looper.getMainLooper());

    /* compiled from: PlayerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018J \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J \u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J \u0010\u000e\u001a\u00020\r2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006R\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u000f8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00148\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;", "", "Landroid/content/Context;", "context", "Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;", ErrorBundle.SUMMARY_ENTRY, "Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;", PlayerActivity.f53645i3, "", "c", "Landroid/app/Activity;", "activity", "b", "Landroid/content/Intent;", "a", "", "ARG_ANCHOR_SUMMARY", "Ljava/lang/String;", "EXTRA_DISTRICT", PlayerActivity.f53643g3, "", "REQUEST_CODE_PK_BROADCASDT", "I", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @m8.g
        public final Intent a(@m8.h Context context, @m8.g LiveSummary summary, @m8.g DistrictType district) {
            Intrinsics.checkNotNullParameter(summary, "summary");
            Intrinsics.checkNotNullParameter(district, "district");
            Intent intent = new Intent(context, district == DistrictType.Pk ? PkRightPlayerActivity.class : PlayerActivity.class);
            intent.putExtra(PlayerActivity.f53645i3, district);
            Bundle bundle = new Bundle();
            bundle.putParcelable(PlayerActivity.f53644h3, summary);
            intent.putExtras(bundle);
            return intent;
        }

        @JvmStatic
        public final void b(@m8.g Activity activity, @m8.g LiveSummary summary, @m8.g DistrictType district) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(summary, "summary");
            Intrinsics.checkNotNullParameter(district, "district");
            c(activity, summary, district);
            activity.overridePendingTransition(R.anim.fragment_slide_left_in, R.anim.fragment_slide_left_out);
        }

        @JvmStatic
        public final void c(@m8.g Context context, @m8.g LiveSummary summary, @m8.g DistrictType district) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(summary, "summary");
            Intrinsics.checkNotNullParameter(district, "district");
            Intent a10 = a(context, summary, district);
            if (district == DistrictType.Pk) {
                ((Activity) context).startActivityForResult(a10, 101);
            } else {
                context.startActivity(a10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerActivity.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            PlayerActivity.this.L4().A0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", MessageBundle.TITLE_ENTRY, "", "price", "", "a", "(Ljava/lang/String;F)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function2<String, Float, Unit> {
        c() {
            super(2);
        }

        public final void a(@m8.g String title, float f10) {
            Intrinsics.checkNotNullParameter(title, "title");
            PlayerActivity.this.K5(title, f10);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(String str, Float f10) {
            a(str, f10.floatValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;", "msg", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function1<PinnedMessageBean, Unit> {
        d() {
            super(1);
        }

        public final void a(@m8.h PinnedMessageBean pinnedMessageBean) {
            PlayerActivity.this.M0(pinnedMessageBean);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(PinnedMessageBean pinnedMessageBean) {
            a(pinnedMessageBean);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function1<t1, Unit> {
        e() {
            super(1);
        }

        public final void a(@m8.g t1 it) {
            Intrinsics.checkNotNullParameter(it, "it");
            PlayerActivity.this.T5(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(t1 t1Var) {
            a(t1Var);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: PlayerActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Integer;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class f extends Lambda implements Function0<Integer> {
        f() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Integer invoke() {
            String O1 = PlayerActivity.this.O1();
            Intrinsics.checkNotNull(O1);
            return Integer.valueOf(Integer.parseInt(O1));
        }
    }

    /* compiled from: PlayerActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Integer;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class g extends Lambda implements Function0<Integer> {
        g() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Integer invoke() {
            String O1 = PlayerActivity.this.O1();
            Intrinsics.checkNotNull(O1);
            return Integer.valueOf(Integer.parseInt(O1));
        }
    }

    /* compiled from: PlayerActivity.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "userId", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class h extends Lambda implements Function1<String, Unit> {
        h() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.h String str) {
            UserInfo userInfo = new UserInfo();
            userInfo.setId(str);
            PlayerActivity.this.P6(userInfo, BaseUserInfoDialog.UserType.COMMON, false);
        }
    }

    /* compiled from: PlayerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$i", "Ljava/lang/Runnable;", "", "run", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PlayerActivity playerActivity = PlayerActivity.this;
            playerActivity.h6(playerActivity.I4() - 1);
            e5.f3 f3Var = null;
            if (PlayerActivity.this.I4() % 5 == 0) {
                Timber.f93860a.k("Sending reduce free preview request, time left: %s", Integer.valueOf(PlayerActivity.this.I4()));
                PlayerActivity.this.D2(null);
            }
            e5.f3 f3Var2 = PlayerActivity.this.I;
            if (f3Var2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            } else {
                f3Var = f3Var2;
            }
            Chronometer chronometer = f3Var.f62422s.f63120y;
            chronometer.setText("试看倒计时: " + PlayerActivity.this.I4());
            if (PlayerActivity.this.I4() > 0) {
                PlayerActivity.this.f53652g1.postDelayed(this, TimeUnit.SECONDS.toMillis(1L));
            } else {
                PlayerActivity.this.K6();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerActivity.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class j extends Lambda implements Function0<Unit> {
        j() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            PlayerActivity playerActivity = PlayerActivity.this;
            g5.a localDataManager = ((BaseStreamActivity) playerActivity).f52469j;
            Intrinsics.checkNotNullExpressionValue(localDataManager, "localDataManager");
            com.qennnsad.aknkaksd.util.l.u(playerActivity, localDataManager);
        }
    }

    /* compiled from: PlayerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\b"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$k", "Landroid/animation/AnimatorListenerAdapter;", "Landroid/animation/Animator;", "animation", "", "onAnimationStart", "onAnimationCancel", "onAnimationEnd", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class k extends AnimatorListenerAdapter {
        k() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(@m8.g Animator animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
            super.onAnimationCancel(animation);
            PlayerActivity.this.S2 = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@m8.g Animator animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
            super.onAnimationEnd(animation);
            PlayerActivity.this.S2 = false;
            if (PlayerActivity.this.Q2.size() > 0) {
                PlayerActivity playerActivity = PlayerActivity.this;
                Object obj = playerActivity.Q2.get(0);
                Intrinsics.checkNotNullExpressionValue(obj, "animationMsgs[0]");
                playerActivity.Q5((UserPublicMsg) obj);
                PlayerActivity.this.Q2.remove(0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(@m8.g Animator animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
            super.onAnimationStart(animation);
            PlayerActivity.this.S2 = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;", "info", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class l extends Lambda implements Function1<AudienceInfo, Unit> {
        l() {
            super(1);
        }

        public final void a(@m8.g AudienceInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            PlayerActivity.Q6(PlayerActivity.this, info.asUserInfo(), null, false, 6, null);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(AudienceInfo audienceInfo) {
            a(audienceInfo);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerActivity.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "subtitle", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class m extends Lambda implements Function1<String, Unit> {
        m() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.h String str) {
            PlayerActivity.this.K0(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "userInfo", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;", "userType", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class n extends Lambda implements Function2<UserInfo, BaseUserInfoDialog.UserType, Unit> {
        n() {
            super(2);
        }

        public final void a(@m8.g UserInfo userInfo, @m8.h BaseUserInfoDialog.UserType userType) {
            Intrinsics.checkNotNullParameter(userInfo, "userInfo");
            UserBean C = ((BaseStreamActivity) PlayerActivity.this).f52469j.C();
            if (C == null) {
                Timber.f93860a.k("Current User is NULL when clicking at user. Auto-Logout probably happened...", new Object[0]);
            } else if (Intrinsics.areEqual(C.getId(), userInfo.getId())) {
            } else {
                PlayerActivity.this.P6(userInfo, userType, false);
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(UserInfo userInfo, BaseUserInfoDialog.UserType userType) {
            a(userInfo, userType);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: PlayerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$o", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;", "", "gameId", "", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class o implements f.b {
        o() {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f.b
        public void a(int i4) {
            PlayerActivity.this.A0(null);
        }
    }

    /* compiled from: PlayerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J-\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$p", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;", "jumpType", "", "jumpId", "", "userMystery", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;Ljava/lang/Integer;Ljava/lang/Boolean;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class p implements f.a {

        /* compiled from: PlayerActivity.kt */
        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[JumpType.values().length];
                iArr[JumpType.GAME_CENTER.ordinal()] = 1;
                iArr[JumpType.STREAM.ordinal()] = 2;
                iArr[JumpType.USER_CARD.ordinal()] = 3;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        p() {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f.a
        public void a(@m8.h JumpType jumpType, @m8.h Integer num, @m8.h Boolean bool) {
            if (jumpType != null) {
                int i4 = a.$EnumSwitchMapping$0[jumpType.ordinal()];
                if (i4 == 1) {
                    PlayerActivity playerActivity = PlayerActivity.this;
                    g5.a localDataManager = ((BaseStreamActivity) playerActivity).f52469j;
                    Intrinsics.checkNotNullExpressionValue(localDataManager, "localDataManager");
                    com.qennnsad.aknkaksd.util.l.u(playerActivity, localDataManager);
                } else if (i4 == 2) {
                    if (num != null) {
                        PlayerActivity.this.L4().B0(num.toString());
                    }
                } else if (i4 != 3 || num == null || bool == null) {
                } else {
                    UserInfo userInfo = new UserInfo();
                    userInfo.setId(num.toString());
                    userInfo.setIsMystery(bool.booleanValue() ? 1 : 0);
                    PlayerActivity.Q6(PlayerActivity.this, userInfo, null, false, 6, null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroid/view/View;", "videoView", "", "a", "(Landroid/view/View;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class q extends Lambda implements Function1<View, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PrivateLimitBean f53676b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(PrivateLimitBean privateLimitBean) {
            super(1);
            this.f53676b = privateLimitBean;
        }

        public final void a(@m8.h View view) {
            Timber.f93860a.k("Video started", new Object[0]);
            e5.f3 f3Var = PlayerActivity.this.I;
            com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = null;
            if (f3Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
                f3Var = null;
            }
            f3Var.f62408e.animate().alpha(0.0f).setDuration(200L).start();
            PlayerActivity.this.X2 = 1;
            com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar2 = PlayerActivity.this.R;
            if (gVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
                gVar2 = null;
            }
            gVar2.b0(PlayerActivity.this.X2);
            com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar3 = PlayerActivity.this.R;
            if (gVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
            } else {
                gVar = gVar3;
            }
            if (!gVar.J() && !PlayerActivity.this.C5()) {
                PlayerActivity.this.O6(false);
            }
            if (this.f53676b.getCome() == 1 && this.f53676b.getPreview_time() > 0 && (this.f53676b.getPtid() == 2 || this.f53676b.getPtid() == 4)) {
                PlayerActivity.this.g5(this.f53676b);
            }
            PlayerActivity.this.L4().E0();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(View view) {
            a(view);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroid/view/View;", "videoView", "", "a", "(Landroid/view/View;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class r extends Lambda implements Function1<View, Unit> {
        r() {
            super(1);
        }

        public final void a(@m8.h View view) {
            PlayerActivity.this.E2();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(View view) {
            a(view);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Landroid/view/View;", "videoView", "", "loadLimit", "", "a", "(Landroid/view/View;Ljava/lang/Boolean;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class s extends Lambda implements Function2<View, Boolean, Unit> {
        s() {
            super(2);
        }

        public final void a(@m8.h View view, @m8.h Boolean bool) {
            if (PlayerActivity.this.D5()) {
                return;
            }
            PlayerActivity.this.O6(true);
            PlayerViewModel L4 = PlayerActivity.this.L4();
            Intrinsics.checkNotNull(bool);
            L4.D0(bool.booleanValue());
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(View view, Boolean bool) {
            a(view, bool);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerActivity.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class t extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PrivateLimitBean f53680b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t(PrivateLimitBean privateLimitBean) {
            super(0);
            this.f53680b = privateLimitBean;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            PlayerActivity.this.M6(this.f53680b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerActivity.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "s", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class v extends Lambda implements Function1<String, Unit> {
        v() {
            super(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(PlayerActivity this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            PlayerActivity.F6(this$0, true, null, 2, null);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String s9) {
            Intrinsics.checkNotNullParameter(s9, "s");
            p4 p4Var = PlayerActivity.this.J;
            if (p4Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
                p4Var = null;
            }
            EditText editText = p4Var.f62921h;
            final PlayerActivity playerActivity = PlayerActivity.this;
            editText.setText('@' + s9 + ' ');
            editText.setSelection(editText.getText().length());
            editText.postDelayed(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.m1
                @Override // java.lang.Runnable
                public final void run() {
                    PlayerActivity.v.b(PlayerActivity.this);
                }
            }, 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;", "hotAnchorSummary", "", "b", "(Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class w extends Lambda implements Function1<HotAnchorSummary, Unit> {
        w() {
            super(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(PlayerActivity this$0, HotAnchorSummary hotAnchorSummary) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(hotAnchorSummary, "$hotAnchorSummary");
            PlayerActivity.f53641e3.c(this$0, hotAnchorSummary, DistrictType.Hot);
        }

        public final void b(@m8.g final HotAnchorSummary hotAnchorSummary) {
            Intrinsics.checkNotNullParameter(hotAnchorSummary, "hotAnchorSummary");
            PlayerActivity.this.b6();
            PlayerActivity.this.C2();
            PlayerActivity.this.O4();
            Handler handler = new Handler();
            final PlayerActivity playerActivity = PlayerActivity.this;
            handler.postDelayed(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.n1
                @Override // java.lang.Runnable
                public final void run() {
                    PlayerActivity.w.c(PlayerActivity.this, hotAnchorSummary);
                }
            }, 1000L);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(HotAnchorSummary hotAnchorSummary) {
            b(hotAnchorSummary);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "userInfo", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class x extends Lambda implements Function1<UserInfo, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f53686b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        x(boolean z9) {
            super(1);
            this.f53686b = z9;
        }

        public final void a(@m8.g UserInfo userInfo) {
            Intrinsics.checkNotNullParameter(userInfo, "userInfo");
            PlayerActivity.this.N6(userInfo, this.f53686b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(UserInfo userInfo) {
            a(userInfo);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: PlayerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\b"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$y", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "newState", "", "onScrollStateChanged", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class y extends RecyclerView.OnScrollListener {
        y() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@m8.g RecyclerView recyclerView, int i4) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i4);
            boolean z9 = true;
            PlayerActivity.this.f53655p2 = (recyclerView.canScrollVertically(1) || i4 != 0) ? false : false;
        }
    }

    public PlayerActivity() {
        Looper myLooper = Looper.myLooper();
        Intrinsics.checkNotNull(myLooper);
        this.f53652g1 = new Handler(myLooper);
        this.f53654p1 = new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.s0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.q7(PlayerActivity.this);
            }
        };
        this.f53658y1 = new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.n0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.a6(PlayerActivity.this);
            }
        };
        this.f53655p2 = true;
        this.Q2 = new ArrayList<>();
        this.T2 = true;
        this.X2 = 1;
        this.f53649b3 = true;
        this.f53651d3 = new i();
    }

    private final void A4(String str) {
        ClipData newPlainText = ClipData.newPlainText("text", str);
        Object systemService = getSystemService("clipboard");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ((ClipboardManager) systemService).setPrimaryClip(newPlainText);
        com.qennnsad.aknkaksd.util.toast.a.n("成功复制:" + str, false, 2, null);
    }

    private final boolean A5() {
        return getRequestedOrientation() == 0 || getRequestedOrientation() == 8;
    }

    private final void A6(WatermarkBean watermarkBean) {
        int type;
        Timber.b bVar = Timber.f93860a;
        bVar.k("Setting up watermark: " + watermarkBean, new Object[0]);
        if (watermarkBean == null || (type = watermarkBean.getType()) == 0) {
            return;
        }
        final String content = watermarkBean.getContent();
        s4(3, content);
        if (type == 2) {
            v4();
            this.f53659y2 = io.reactivex.z.interval(10L, TimeUnit.MINUTES).subscribeOn(io.reactivex.schedulers.b.e()).observeOn(io.reactivex.android.schedulers.a.c()).subscribe(new n7.g() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.d1
                @Override // n7.g
                public final void accept(Object obj) {
                    PlayerActivity.B6(PlayerActivity.this, content, (Long) obj);
                }
            });
        }
    }

    private final boolean B5() {
        return this.f52469j.G() && !A5();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B6(PlayerActivity this$0, String logo, Long l10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(logo, "$logo");
        this$0.s4((int) (Math.random() * 4), logo);
    }

    private final void C4() {
        com.qennnsad.aknkaksd.util.danmu.c cVar = this.P2;
        com.qennnsad.aknkaksd.util.danmu.a aVar = null;
        if (cVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mLevelDanmuControl");
            cVar = null;
        }
        cVar.e();
        com.qennnsad.aknkaksd.util.danmu.a aVar2 = this.O2;
        if (aVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mDanmuControl");
        } else {
            aVar = aVar2;
        }
        aVar.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean C5() {
        return this.M2 != null;
    }

    private final void C6(boolean z9) {
        String str = this.f52467h;
        com.qennnsad.aknkaksd.util.o0.a(str, "showFanClubButtons: " + z9);
        e5.f3 f3Var = this.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        m4 m4Var = f3Var.f62421r;
        if (z9) {
            FrameLayout layoutFanclubBtns = m4Var.f62749d;
            Intrinsics.checkNotNullExpressionValue(layoutFanclubBtns, "layoutFanclubBtns");
            layoutFanclubBtns.setVisibility(0);
            boolean z10 = L4().W() && L4().x0();
            m4Var.f62750e.setVisibility(z10 ? 0 : 8);
            if (z10) {
                TextView textView = m4Var.f62750e;
                FanClubInfoBean value = L4().U().getValue();
                Intrinsics.checkNotNull(value);
                textView.setText(String.valueOf(value.getFreeGifts()));
                return;
            }
            return;
        }
        FrameLayout layoutFanclubBtns2 = m4Var.f62749d;
        Intrinsics.checkNotNullExpressionValue(layoutFanclubBtns2, "layoutFanclubBtns");
        layoutFanclubBtns2.setVisibility(8);
    }

    private final void D4() {
        Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag(RankTodayDialog.class.getSimpleName());
        RankTodayDialog rankTodayDialog = findFragmentByTag instanceof RankTodayDialog ? (RankTodayDialog) findFragmentByTag : null;
        if (rankTodayDialog != null) {
            Dialog dialog = rankTodayDialog.getDialog();
            boolean z9 = true;
            if (!((dialog == null || !dialog.isShowing()) ? false : false) || rankTodayDialog.isRemoving()) {
                return;
            }
            rankTodayDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean D5() {
        boolean z9 = this.V2 != null;
        Timber.b bVar = Timber.f93860a;
        bVar.k("isPrivateRoomDialogShown: " + z9, new Object[0]);
        return z9;
    }

    private final void E4() {
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = this.R;
        if (gVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
            gVar = null;
        }
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g.z(gVar, false, 1, null);
        b6();
        C2();
    }

    private final void F4() {
        G4(false);
    }

    public static /* synthetic */ void F6(PlayerActivity playerActivity, boolean z9, String str, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showInputLayout");
        }
        if ((i4 & 2) != 0) {
            str = "";
        }
        playerActivity.E6(z9, str);
    }

    private final void G5(PlayerViewModel.a aVar) {
        if (aVar instanceof PlayerViewModel.a.c) {
            PlayerViewModel.a.c cVar = (PlayerViewModel.a.c) aVar;
            if (cVar.e() != null) {
                r(cVar.e().getLocalizedMessage());
            }
            if (cVar.f() != null) {
                r(getString(cVar.f().intValue()));
            }
            F4();
            return;
        }
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = null;
        if (aVar instanceof PlayerViewModel.a.b) {
            Integer d4 = ((PlayerViewModel.a.b) aVar).d();
            if (d4 != null) {
                com.qennnsad.aknkaksd.util.toast.a.m(d4.intValue(), false, 2, null);
            }
            F4();
        } else if (aVar instanceof PlayerViewModel.a.l) {
            L6(((PlayerViewModel.a.l) aVar).d());
        } else if (aVar instanceof PlayerViewModel.a.f) {
            u4();
        } else if (aVar instanceof PlayerViewModel.a.i) {
            J5(((PlayerViewModel.a.i) aVar).d());
        } else if (aVar instanceof PlayerViewModel.a.C0444a) {
            A4(((PlayerViewModel.a.C0444a) aVar).d());
        } else if (aVar instanceof PlayerViewModel.a.h) {
            com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar2 = this.R;
            if (gVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
            } else {
                gVar = gVar2;
            }
            gVar.T(((PlayerViewModel.a.h) aVar).d());
        } else if (aVar instanceof PlayerViewModel.a.e) {
            N5(((PlayerViewModel.a.e) aVar).d());
        } else if (aVar instanceof PlayerViewModel.a.j) {
            x4();
        } else if (aVar instanceof PlayerViewModel.a.d) {
            PlayerViewModel.a.d dVar = (PlayerViewModel.a.d) aVar;
            P5(dVar.f(), dVar.e());
        } else if (aVar instanceof PlayerViewModel.a.k) {
            com.qennnsad.aknkaksd.util.toast.a.y(((PlayerViewModel.a.k) aVar).d(), false, 2, null);
            R6();
        } else if (aVar instanceof PlayerViewModel.a.g) {
            b5.a.g(((PlayerViewModel.a.g) aVar).d(), this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G6(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        e5.f3 f3Var = this$0.I;
        e5.f3 f3Var2 = null;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62422s.f63107l.setVisibility(0);
        try {
            Animation loadAnimation = AnimationUtils.loadAnimation(this$0, R.anim.top_in);
            e5.f3 f3Var3 = this$0.I;
            if (f3Var3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            } else {
                f3Var2 = f3Var3;
            }
            f3Var2.f62422s.f63107l.startAnimation(loadAnimation);
        } catch (Throwable unused) {
        }
    }

    private final void H5(boolean z9) {
        PrivateLimitBean limit;
        e5.f3 f3Var = this.I;
        n4 n4Var = null;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        ImageButton imageButton = f3Var.f62421r.f62747b;
        if (z9) {
            LiveSummary L1 = L1();
            boolean z10 = true;
            C6((L1 == null || (limit = L1.getLimit()) == null || limit.getFanclubEnabled() != 1) ? false : false);
        } else {
            C6(false);
            imageButton.clearAnimation();
        }
        n4 n4Var2 = this.K;
        if (n4Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
        } else {
            n4Var = n4Var2;
        }
        n4Var.f62823x.setVisibility(y5() ? 0 : 8);
    }

    private final void I5(List<? extends Gift> list) {
        Timber.b bVar = Timber.f93860a;
        StringBuilder sb = new StringBuilder();
        sb.append("onGiftListLoaded:");
        sb.append((list == null || (r2 = list.toString()) == null) ? "NULL" : "NULL");
        bVar.k(sb.toString(), new Object[0]);
        if (list == null || list.isEmpty()) {
            return;
        }
        Map<Boolean, List<Gift>> o9 = b5.a.o(list);
        this.f53648b2 = o9.get(Boolean.TRUE);
        this.f53653g2 = o9.get(Boolean.FALSE);
        bVar.k("========", new Object[0]);
        bVar.k("Gifts Fanclub Free: %s", this.f53648b2);
        bVar.k("Gifts Fanclub Paid: %s", this.f53653g2);
        this.V1 = b5.a.f(list);
        T4();
    }

    private final void I6() {
        e5.f3 f3Var = this.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62417n.setImageResource(R.drawable.ic_pk_setting);
        O6(true);
    }

    private final void J5(JoinFanClubBean joinFanClubBean) {
        Timber.b bVar = Timber.f93860a;
        bVar.k("Join club result: " + joinFanClubBean, new Object[0]);
        H4().A(this, joinFanClubBean, new j());
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x022b  */
    @android.annotation.SuppressLint({"CheckResult"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void J6(com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean r15) {
        /*
            Method dump skipped, instructions count: 698
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity.J6(com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K5(String str, float f10) {
        boolean z9 = f10 > 0.0f;
        this.f53650c3 = str;
        n4 n4Var = this.K;
        n4 n4Var2 = null;
        if (n4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var = null;
        }
        n4Var.f62820u.setVisibility(z9 ? 0 : 8);
        n4 n4Var3 = this.K;
        if (n4Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var3 = null;
        }
        n4Var3.f62802c.setEnabled(z9);
        n4 n4Var4 = this.K;
        if (n4Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
        } else {
            n4Var2 = n4Var4;
        }
        n4Var2.f62811l.setText(com.qennnsad.aknkaksd.util.p0.e(f10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K6() {
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = this.R;
        if (gVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
            gVar = null;
        }
        gVar.F0();
        O6(false);
        Timber.f93860a.k("Show private fragment", new Object[0]);
        this.V2 = new PrivateRoomFragment();
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        PrivateRoomFragment privateRoomFragment = this.V2;
        Intrinsics.checkNotNull(privateRoomFragment);
        beginTransaction.replace(R.id.fragment_container, privateRoomFragment).commitAllowingStateLoss();
        getSupportFragmentManager().executePendingTransactions();
    }

    private final void L5(List<PinnedMessageBean> list) {
        e5.f3 f3Var = this.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        RecyclerView recyclerView = f3Var.f62422s.f63099d;
        if (!B5()) {
            recyclerView.setVisibility(8);
        } else if (list != null && !list.isEmpty()) {
            recyclerView.setVisibility(0);
            com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.receive.a aVar = this.H2;
            if (aVar == null) {
                return;
            }
            aVar.s(list);
        } else {
            recyclerView.setVisibility(8);
        }
    }

    private final void L6(PrivateLimitBean.StreamBean streamBean) {
        Timber.f93860a.k("Show private stream from the getPrivateCharge: %s", streamBean);
        if (this.U2) {
            return;
        }
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = this.R;
        if (gVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
            gVar = null;
        }
        String pull_url = streamBean.getPull_url();
        Intrinsics.checkNotNullExpressionValue(pull_url, "streamFromPrivateCharge.pull_url");
        gVar.w0(pull_url);
        B2();
        A6(streamBean.getWatermark());
    }

    private final void M4(UserInfo userInfo) {
        V6(userInfo, DistrictType.Pk);
        b6();
        C2();
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = this.R;
        if (gVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
            gVar = null;
        }
        gVar.F0();
        this.E2 = true;
    }

    private final void M5(boolean z9) {
        com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.receive.a aVar = this.H2;
        if (aVar != null) {
            Intrinsics.checkNotNull(aVar);
            aVar.p(z9);
            e5.f3 f3Var = this.I;
            if (f3Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
                f3Var = null;
            }
            RecyclerView recyclerView = f3Var.f62422s.f63099d;
            if (z9) {
                recyclerView.setItemAnimator(null);
                return;
            }
            recyclerView.setItemAnimator(new DefaultItemAnimator());
            recyclerView.setAdapter(null);
            recyclerView.setAdapter(this.H2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M6(PrivateLimitBean privateLimitBean) {
        RankTodayDialog.f52268l.a(Integer.valueOf(privateLimitBean.getAnchor().getLob())).show(getSupportFragmentManager(), RankTodayDialog.class.getSimpleName());
    }

    private final void N4() {
        if (this.E2) {
            R1();
            B2();
            ((e5.i) J()).f62525i.setCurrentItem(L4().S());
            this.U2 = false;
            this.E2 = false;
            p7();
        }
    }

    private final void N5(final UserInfo userInfo) {
        S5();
        this.M2 = new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.c1
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.O5(PlayerActivity.this, userInfo);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N6(UserInfo userInfo, boolean z9) {
        String K1 = K1();
        Intrinsics.checkNotNull(K1);
        String O1 = O1();
        Intrinsics.checkNotNull(O1);
        new RoomManageDialog(userInfo, K1, O1, z9, new u(userInfo)).show(getSupportFragmentManager(), (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O4() {
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar;
        PrivateLimitBean limit;
        LiveSummary L1 = L1();
        e5.f3 f3Var = null;
        if (L1 != null) {
            L1.setPk(null);
        }
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar2 = this.R;
        if (gVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
            gVar = null;
        } else {
            gVar = gVar2;
        }
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g.u0(gVar, false, E5(), false, 4, null);
        e5.f3 f3Var2 = this.I;
        if (f3Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
        } else {
            f3Var = f3Var2;
        }
        com.qennnsad.aknkaksd.util.extentions.b.a(f3Var, true, B5());
        L4().d0().setValue(Boolean.FALSE);
        LiveSummary L12 = L1();
        C6((L12 == null || (limit = L12.getLimit()) == null || limit.getFanclubEnabled() != 1) ? false : true);
        N0(this.f53657x2, true);
        O6(false);
        Z5();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O5(PlayerActivity this$0, UserInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        this$0.h5(info);
        this$0.H6();
        this$0.O6(false);
        this$0.f52470k.d(EventSignature.APP_PK_BATTLE_START, this$0.O1());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O6(boolean z9) {
        e5.f3 f3Var = this.I;
        e5.f3 f3Var2 = null;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62413j.f62335j.setVisibility(z9 ? 4 : 0);
        e5.f3 f3Var3 = this.I;
        if (f3Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var3 = null;
        }
        ViewParent parent = f3Var3.f62417n.getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup = (ViewGroup) parent;
        if (z9) {
            if (this.J2 == null) {
                this.J2 = AnimationUtils.loadAnimation(this, R.anim.tip);
                LinearInterpolator linearInterpolator = new LinearInterpolator();
                Animation animation = this.J2;
                if (animation != null) {
                    animation.setInterpolator(linearInterpolator);
                }
            }
            e5.f3 f3Var4 = this.I;
            if (f3Var4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            } else {
                f3Var2 = f3Var4;
            }
            f3Var2.f62417n.startAnimation(this.J2);
            viewGroup.setVisibility(0);
            viewGroup.bringToFront();
            f6(viewGroup);
            return;
        }
        viewGroup.setVisibility(8);
    }

    private final void P4() {
        this.O2 = new com.qennnsad.aknkaksd.util.danmu.a(this);
        this.P2 = new com.qennnsad.aknkaksd.util.danmu.c(this);
        com.qennnsad.aknkaksd.util.danmu.a aVar = this.O2;
        com.qennnsad.aknkaksd.util.danmu.c cVar = null;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mDanmuControl");
            aVar = null;
        }
        VB J = J();
        Intrinsics.checkNotNull(J);
        aVar.q(((e5.i) J).f62518b);
        com.qennnsad.aknkaksd.util.danmu.c cVar2 = this.P2;
        if (cVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mLevelDanmuControl");
        } else {
            cVar = cVar2;
        }
        VB J2 = J();
        Intrinsics.checkNotNull(J2);
        cVar.l(((e5.i) J2).f62519c);
    }

    private final void P5(String str, PrivateLimitBean.StreamBean streamBean) {
        boolean contains$default;
        String str2 = this.f52467h;
        StringBuilder sb = new StringBuilder();
        sb.append("PrivateAccessGranted. Type=");
        sb.append(str);
        sb.append(", URL: ");
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = null;
        sb.append(streamBean != null ? streamBean.getPull_url() : null);
        com.qennnsad.aknkaksd.util.o0.a(str2, sb.toString());
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        PrivateRoomFragment privateRoomFragment = this.V2;
        Intrinsics.checkNotNull(privateRoomFragment);
        beginTransaction.remove(privateRoomFragment).commit();
        this.V2 = null;
        O6(true);
        int hashCode = str.hashCode();
        if (hashCode != 50) {
            if (hashCode != 52) {
                if (hashCode == 57 && str.equals(g5.h.f67844h)) {
                    v1(false, "已花费:1分钟");
                }
            } else if (str.equals(g5.h.f67840d)) {
                v1(true, "已花费:" + BaseBeautyApplication.Companion.b().getMoney() + com.qennnsad.aknkaksd.e.f48515g);
            }
        } else if (str.equals("2")) {
            e5.f3 f3Var = this.I;
            if (f3Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
                f3Var = null;
            }
            f3Var.f62422s.f63097b.setVisibility(8);
        }
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) "1234597", (CharSequence) str, false, 2, (Object) null);
        if (contains$default) {
            B2();
            if (streamBean != null) {
                com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar2 = this.R;
                if (gVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
                } else {
                    gVar = gVar2;
                }
                String pull_url = streamBean.getPull_url();
                Intrinsics.checkNotNullExpressionValue(pull_url, "streamBean.pull_url");
                gVar.T(pull_url);
                A6(streamBean.getWatermark());
            }
        }
    }

    @SuppressLint({"CheckResult"})
    private final void Q4() {
        e5.f3 f3Var = this.I;
        e5.f3 f3Var2 = null;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        if (f3Var.f62421r.f62747b.isEnabled()) {
            e5.f3 f3Var3 = this.I;
            if (f3Var3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
                f3Var3 = null;
            }
            ImageButton imageButton = f3Var3.f62421r.f62747b;
            Animation animation = this.f53646a3;
            if (animation == null) {
                Intrinsics.throwUninitializedPropertyAccessException("shakeFanClubAnimation");
                animation = null;
            }
            imageButton.startAnimation(animation);
        }
        e5.f3 f3Var4 = this.I;
        if (f3Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var4 = null;
        }
        ImageButton imageButton2 = f3Var4.f62421r.f62747b;
        Intrinsics.checkNotNullExpressionValue(imageButton2, "playerBinding.sidePanel.btnFanClub");
        com.qennnsad.aknkaksd.util.f1.d(imageButton2, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.a0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.R4(PlayerActivity.this);
            }
        });
        e5.f3 f3Var5 = this.I;
        if (f3Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
        } else {
            f3Var2 = f3Var5;
        }
        f3Var2.f62421r.f62747b.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.h
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean S4;
                S4 = PlayerActivity.S4(PlayerActivity.this, view);
                return S4;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void Q5(UserPublicMsg userPublicMsg) {
        if (this.S2) {
            this.Q2.add(userPublicMsg);
            return;
        }
        CharSequence concat = TextUtils.concat(J4().r(userPublicMsg.getFromClientName(), -1), J4().m(userPublicMsg.getContent()));
        e5.f3 f3Var = this.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        s4 s4Var = f3Var.f62422s;
        s4Var.B.setText(concat);
        Rect rect = new Rect();
        TextPaint paint = s4Var.B.getPaint();
        Intrinsics.checkNotNullExpressionValue(paint, "tvTopMsg.paint");
        paint.getTextBounds(concat.toString(), 0, concat.length(), rect);
        int width = rect.width();
        ViewGroup.LayoutParams layoutParams = s4Var.B.getLayoutParams();
        layoutParams.width = width + com.qennnsad.aknkaksd.util.h1.f(this, 80);
        s4Var.B.setLayoutParams(layoutParams);
        s4Var.A.setVisibility(0);
        int i4 = com.qennnsad.aknkaksd.util.h1.f54734a.i(this);
        s4Var.A.setX(i4);
        s4Var.A.animate().x((-layoutParams.width) - com.qennnsad.aknkaksd.util.h1.f(this, 80)).setDuration(((layoutParams.width + i4) * 5000) / i4).setListener(new k()).start();
    }

    public static /* synthetic */ void Q6(PlayerActivity playerActivity, UserInfo userInfo, BaseUserInfoDialog.UserType userType, boolean z9, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showUserInfoDialog");
        }
        if ((i4 & 2) != 0) {
            userType = BaseUserInfoDialog.UserType.COMMON;
        }
        if ((i4 & 4) != 0) {
            z9 = false;
        }
        playerActivity.P6(userInfo, userType, z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R4(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.qennnsad.aknkaksd.util.e0 H4 = this$0.H4();
        String K1 = this$0.K1();
        Intrinsics.checkNotNull(K1);
        H4.u(this$0, K1, this$0.L4().U().getValue(), new b());
    }

    private final void R5() {
        this.U2 = true;
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = this.R;
        if (gVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
            gVar = null;
        }
        gVar.S(true);
        W6();
        com.qennnsad.aknkaksd.util.sound.a aVar = this.Q;
        if (aVar != null) {
            aVar.e();
        }
        C4();
        this.f53652g1.removeCallbacks(this.f53651d3);
    }

    private final void R6() {
        if (!L4().Y()) {
            Timber.f93860a.x("Trying to skip room. But there no any next. Show room finish dialog", new Object[0]);
            O6(false);
            E2();
        } else if (L4().R()) {
            VB J = J();
            Intrinsics.checkNotNull(J);
            ((e5.i) J).f62525i.j(null);
        } else {
            VB J2 = J();
            Intrinsics.checkNotNull(J2);
            ((e5.i) J2).f62525i.n(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S3(PlayerActivity this$0, ErrorMsg msg, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(msg, "$msg");
        this$0.E6(true, msg.getBad_content());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean S4(PlayerActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.L4().x0()) {
            if (this$0.L4().W()) {
                List<? extends Gift> list = this$0.f53648b2;
                Intrinsics.checkNotNull(list);
                if (list.size() > 0) {
                    List<? extends Gift> list2 = this$0.f53648b2;
                    Intrinsics.checkNotNull(list2);
                    Random random = new Random();
                    List<? extends Gift> list3 = this$0.f53648b2;
                    Intrinsics.checkNotNull(list3);
                    this$0.L4().L0(list2.get(random.nextInt(list3.size())), 1, this$0.f53649b3);
                }
            }
            com.qennnsad.aknkaksd.util.toast.a.m(R.string.fan_club_no_free_gifts, false, 2, null);
        }
        return true;
    }

    private final void S5() {
        W6();
        L4().d0().setValue(Boolean.TRUE);
        e5.f3 f3Var = this.I;
        e5.f3 f3Var2 = null;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        com.qennnsad.aknkaksd.util.extentions.b.a(f3Var, false, B5());
        N0(false, true);
        e5.f3 f3Var3 = this.I;
        if (f3Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
        } else {
            f3Var2 = f3Var3;
        }
        f3Var2.f62409f.setVisibility(8);
        ((e5.i) J()).f62523g.setIsEnabled(false);
        C6(L4().x0());
    }

    @JvmStatic
    public static final void S6(@m8.g Activity activity, @m8.g LiveSummary liveSummary, @m8.g DistrictType districtType) {
        f53641e3.b(activity, liveSummary, districtType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T3(DialogInterface dialogInterface, int i4) {
    }

    @SuppressLint({"CheckResult", "DefaultLocale"})
    private final void T4() {
        List<? extends Gift> list = this.V1;
        if (list != null) {
            Intrinsics.checkNotNull(list);
            if (list.size() > 0) {
                Timber.f93860a.k("initGiftList: %s", this.V1);
                n4 n4Var = this.K;
                n4 n4Var2 = null;
                if (n4Var == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
                    n4Var = null;
                }
                if (n4Var.f62804e.g()) {
                    LiveSummary L1 = L1();
                    Intrinsics.checkNotNull(L1);
                    int toyStatus = L1.getToyStatus();
                    n4 n4Var3 = this.K;
                    if (n4Var3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
                        n4Var3 = null;
                    }
                    if (toyStatus == n4Var3.f62804e.getToyStatus()) {
                        return;
                    }
                }
                n4 n4Var4 = this.K;
                if (n4Var4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
                    n4Var4 = null;
                }
                n4Var4.f62814o.setVisibility(8);
                n4 n4Var5 = this.K;
                if (n4Var5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
                    n4Var5 = null;
                }
                n4Var5.f62821v.setSelected(true);
                n4 n4Var6 = this.K;
                if (n4Var6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
                    n4Var6 = null;
                }
                TextView textView = n4Var6.f62821v;
                Intrinsics.checkNotNullExpressionValue(textView, "giftBinding.roomGiftChargeinforBalance");
                com.qennnsad.aknkaksd.util.f1.d(textView, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.t0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PlayerActivity.U4(PlayerActivity.this);
                    }
                });
                c5();
                Y4();
                W5();
                n4 n4Var7 = this.K;
                if (n4Var7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
                    n4Var7 = null;
                }
                n4Var7.f62804e.setGiftSelectChangeListener(new com.qennnsad.aknkaksd.presentation.ui.widget.giftView.a() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.z
                    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.giftView.a
                    public final void a(boolean z9) {
                        PlayerActivity.V4(PlayerActivity.this, z9);
                    }
                });
                n4 n4Var8 = this.K;
                if (n4Var8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
                } else {
                    n4Var2 = n4Var8;
                }
                n4Var2.f62815p.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.h1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        PlayerActivity.W4(PlayerActivity.this, view);
                    }
                });
                this.f52469j.s0(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.n
                    @Override // androidx.lifecycle.Observer
                    public final void onChanged(Object obj) {
                        PlayerActivity.X4(PlayerActivity.this, (UserMoney) obj);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T5(t1 t1Var) {
        if (Intrinsics.areEqual(t1Var, t1.a.f53995c)) {
            V5(Screen.StreamingRoom.Action.OpenCasino, "赌场");
            A0(null);
        } else if (t1Var instanceof t1.b) {
            StreamChatDialog.f54204l.a().show(getSupportFragmentManager(), (String) null);
        }
    }

    private final void T6() {
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = this.R;
        if (gVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
            gVar = null;
        }
        gVar.T("https://www.rmp-streaming.com/media/big-buck-bunny-360p.mp4");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U4(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        n4 n4Var = this$0.K;
        n4 n4Var2 = null;
        if (n4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var = null;
        }
        n4Var.f62803d.setVisibility(8);
        n4 n4Var3 = this$0.K;
        if (n4Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
        } else {
            n4Var2 = n4Var3;
        }
        n4Var2.f62814o.requestLayout();
        Screen.GiftPanel.Action action = Screen.GiftPanel.Action.Topup;
        String string = this$0.getString(R.string.gifts_panel_recharge);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.gifts_panel_recharge)");
        this$0.U5(action, string);
        g5.a localDataManager = this$0.f52469j;
        Intrinsics.checkNotNullExpressionValue(localDataManager, "localDataManager");
        com.qennnsad.aknkaksd.util.l.o0(this$0, localDataManager);
    }

    private final void U5(Screen.Action action, String str) {
        this.f52470k.a(Screen.GiftPanel.id, action, str);
    }

    @JvmStatic
    public static final void U6(@m8.g Context context, @m8.g LiveSummary liveSummary, @m8.g DistrictType districtType) {
        f53641e3.c(context, liveSummary, districtType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V4(PlayerActivity this$0, boolean z9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        n4 n4Var = this$0.K;
        n4 n4Var2 = null;
        if (n4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var = null;
        }
        Gift selectedGift = n4Var.f62804e.getSelectedGift();
        n4 n4Var3 = this$0.K;
        if (n4Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
        } else {
            n4Var2 = n4Var3;
        }
        n4Var2.f62815p.setEnabled(selectedGift != null);
    }

    private final void V5(Screen.Action action, String str) {
        this.f52470k.a(Screen.StreamingRoom.id, action, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W4(PlayerActivity this$0, View view) {
        double coinbalance;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        n4 n4Var = this$0.K;
        n4 n4Var2 = null;
        if (n4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var = null;
        }
        Gift selectedGift = n4Var.f62804e.getSelectedGift();
        Timber.f93860a.k("xxx Selected Gift: %s", selectedGift);
        if (selectedGift == null) {
            return;
        }
        if (this$0.L4().s0() == null) {
            coinbalance = 0.0d;
        } else {
            UserMoney s02 = this$0.L4().s0();
            Intrinsics.checkNotNull(s02);
            coinbalance = s02.getCoinbalance();
        }
        if (coinbalance < selectedGift.getPrice() * 1) {
            com.qennnsad.aknkaksd.util.toast.a.n(this$0.getString(R.string.player_live_please_recharge), false, 2, null);
            return;
        }
        this$0.K2 = 1;
        n4 n4Var3 = this$0.K;
        if (n4Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
        } else {
            n4Var2 = n4Var3;
        }
        n4Var2.f62815p.setVisibility(0);
        this$0.L4().L0(selectedGift, this$0.t4(selectedGift), this$0.f53649b3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void W5() {
        n4 n4Var = this.K;
        n4 n4Var2 = null;
        if (n4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var = null;
        }
        if (n4Var.f62804e == null || L1() == null) {
            return;
        }
        List<? extends Gift> list = this.V1;
        n4 n4Var3 = this.K;
        if (n4Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var3 = null;
        }
        boolean z9 = n4Var3.f62823x.getDisplayedChild() == 1;
        if (z9) {
            list = this.f53653g2;
        }
        n4 n4Var4 = this.K;
        if (n4Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
        } else {
            n4Var2 = n4Var4;
        }
        GiftLayoutView giftLayoutView = n4Var2.f62804e;
        LiveSummary L1 = L1();
        Intrinsics.checkNotNull(L1);
        giftLayoutView.n(list, L1.getToyStatus(), z9);
    }

    private final void W6() {
        GiftAnimationUtil giftAnimationUtil = this.L;
        com.qennnsad.aknkaksd.util.animations.f fVar = null;
        if (giftAnimationUtil == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftAnimationUtil");
            giftAnimationUtil = null;
        }
        giftAnimationUtil.C();
        com.qennnsad.aknkaksd.util.animations.f fVar2 = this.M;
        if (fVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("peerageAnimationUtil");
        } else {
            fVar = fVar2;
        }
        fVar.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X4(PlayerActivity this$0, UserMoney userMoney) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (userMoney == null || this$0.L4() == null) {
            return;
        }
        this$0.L4().t0().setValue(userMoney);
        this$0.s7();
    }

    private final void X5() {
        n4 n4Var = this.K;
        if (n4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var = null;
        }
        com.qennnsad.aknkaksd.presentation.ui.room.player.player.adapter.c cVar = (com.qennnsad.aknkaksd.presentation.ui.room.player.player.adapter.c) n4Var.f62819t.getAdapter();
        if (cVar != null) {
            cVar.g();
            K5("", -1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X6(PlayerActivity this$0, boolean z9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z9) {
            this$0.c();
        } else {
            this$0.a();
        }
    }

    private final void Y4() {
        n4 n4Var = this.K;
        n4 n4Var2 = null;
        if (n4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var = null;
        }
        n4Var.f62822w.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.i1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PlayerActivity.Z4(PlayerActivity.this, view);
            }
        });
        n4 n4Var3 = this.K;
        if (n4Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var3 = null;
        }
        n4Var3.f62823x.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PlayerActivity.a5(PlayerActivity.this, view);
            }
        });
        n4 n4Var4 = this.K;
        if (n4Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
        } else {
            n4Var2 = n4Var4;
        }
        n4Var2.f62824y.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PlayerActivity.b5(PlayerActivity.this, view);
            }
        });
        m7();
    }

    private final void Y5() {
        this.T2 = true;
        e5.f3 f3Var = this.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        s4 s4Var = f3Var.f62422s;
        s4Var.f63097b.setVisibility(4);
        s4Var.f63120y.stop();
        s4Var.f63120y.setBase(SystemClock.elapsedRealtime());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y6(PlayerActivity this$0, com.qennnsad.aknkaksd.util.t event) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "event");
        l.a aVar = (l.a) event.a();
        if (aVar != null) {
            com.qennnsad.aknkaksd.util.toast.a.j(this$0, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z4(PlayerActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m7();
    }

    private final void Z5() {
        e5.f3 f3Var = this.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62409f.setVisibility(0);
        ((e5.i) J()).f62523g.setIsEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z6(PlayerActivity this$0, Uri uri) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        e5.f3 f3Var = this$0.I;
        e5.f3 f3Var2 = null;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        com.qennnsad.aknkaksd.util.img.e.i(f3Var.f62417n, uri);
        e5.f3 f3Var3 = this$0.I;
        if (f3Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
        } else {
            f3Var2 = f3Var3;
        }
        com.qennnsad.aknkaksd.util.img.e.g(f3Var2.f62422s.f63121z, uri, true, R.drawable.ic_launcher, R.drawable.ic_default_head_small);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a5(PlayerActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.n7();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a6(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Timber.f93860a.H("Bluetooth").k("OLD LEVEL 0", new Object[0]);
        this$0.f53656x1 = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a7(PlayerActivity this$0, LiveSummary summary) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(summary, "summary");
        e5.f3 f3Var = this$0.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62422s.f63116u.setText(summary.getNickname());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b5(PlayerActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.o7();
        Screen.GiftPanel.Action action = Screen.GiftPanel.Action.VipPanel;
        String string = this$0.getString(R.string.room_noble_open);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.room_noble_open)");
        this$0.U5(action, string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b6() {
        int i4;
        this.f53652g1.removeCallbacks(this.f53651d3);
        if (!this.N2 || (i4 = 5 - (this.S % 5)) == 5) {
            return;
        }
        Timber.b bVar = Timber.f93860a;
        bVar.k("Sending finish reduce free preview request, time spent: " + i4, new Object[0]);
        D2(Integer.valueOf(i4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b7(PlayerActivity this$0, UserInfo userInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(userInfo, "userInfo");
        if (Intrinsics.areEqual(userInfo.getBroadcasting(), "n")) {
            Timber.f93860a.k("Show user info - anchor is offline.", new Object[0]);
            if (this$0.L2) {
                this$0.L2 = false;
                return;
            } else {
                this$0.r4(false);
                return;
            }
        }
        e5.f3 f3Var = this$0.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62422s.C.setText(this$0.O.format(userInfo.getBeanorignal()));
    }

    private final void c5() {
        n4 n4Var = this.K;
        n4 n4Var2 = null;
        if (n4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var = null;
        }
        n4Var.f62819t.setNestedScrollingEnabled(true);
        n4 n4Var3 = this.K;
        if (n4Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var3 = null;
        }
        n4Var3.f62819t.setLayoutManager(new LinearLayoutManager(this, 0, false));
        n4 n4Var4 = this.K;
        if (n4Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var4 = null;
        }
        n4Var4.f62819t.setHasFixedSize(true);
        n4 n4Var5 = this.K;
        if (n4Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var5 = null;
        }
        n4Var5.f62819t.setAdapter(new com.qennnsad.aknkaksd.presentation.ui.room.player.player.adapter.c(new c()));
        int color = ContextCompat.getColor(this, R.color.md_grey_600);
        int color2 = ContextCompat.getColor(this, R.color.md_grey_200);
        n4 n4Var6 = this.K;
        if (n4Var6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var6 = null;
        }
        n4Var6.f62819t.addItemDecoration(new com.qennnsad.aknkaksd.presentation.ui.room.player.player.adapter.a(8, 8, 150, color, color2));
        n4 n4Var7 = this.K;
        if (n4Var7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var7 = null;
        }
        n4Var7.f62819t.setOnFlingListener(null);
        PagerSnapHelper pagerSnapHelper = new PagerSnapHelper();
        n4 n4Var8 = this.K;
        if (n4Var8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var8 = null;
        }
        pagerSnapHelper.attachToRecyclerView(n4Var8.f62819t);
        n4 n4Var9 = this.K;
        if (n4Var9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
        } else {
            n4Var2 = n4Var9;
        }
        n4Var2.f62802c.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.j1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PlayerActivity.d5(PlayerActivity.this, view);
            }
        });
    }

    private final void c6() {
        this.f52480u.r("{\"type\":\"peerage_join\",\"title\":\"【喜报】\",\"user_id\":45608615,\"user_nickname\":\"收女王\",\"desc\":\"成为幸运玩家，充值获得双倍67金币\",\"peerage_id\":100,\"peerage_name\":\"\"}");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c7(PlayerActivity this$0, PrivateLimitBean limitBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(limitBean, "limitBean");
        this$0.J6(limitBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d5(PlayerActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f52470k.d(EventSignature.APP_BUY_VIP, this$0.f53650c3, Screen.StreamingRoom.id, this$0.K1());
        com.qennnsad.aknkaksd.data.repository.m sourceFactory = this$0.T;
        Intrinsics.checkNotNullExpressionValue(sourceFactory, "sourceFactory");
        com.qennnsad.aknkaksd.util.l.g0(this$0, sourceFactory, this$0.K1());
        this$0.e6(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d7(PlayerActivity this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "list");
        com.qennnsad.aknkaksd.presentation.ui.room.b bVar = this$0.W;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("audienceAdapter");
            bVar = null;
        }
        bVar.submitList(list);
    }

    @SuppressLint({"CheckResult"})
    private final void e5() {
        e5.f3 f3Var = this.I;
        e5.f3 f3Var2 = null;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        ImageButton imageButton = f3Var.f62410g.f63030g;
        Intrinsics.checkNotNullExpressionValue(imageButton, "playerBinding.liveOperation.roomPinnedMsg");
        com.qennnsad.aknkaksd.util.f1.d(imageButton, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.w0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.f5(PlayerActivity.this);
            }
        });
        g5.a localDataManager = this.f52469j;
        Intrinsics.checkNotNullExpressionValue(localDataManager, "localDataManager");
        com.qennnsad.aknkaksd.data.repository.m sourceFactory = this.T;
        Intrinsics.checkNotNullExpressionValue(sourceFactory, "sourceFactory");
        this.H2 = new com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.receive.a(localDataManager, sourceFactory, new d());
        e5.f3 f3Var3 = this.I;
        if (f3Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var3 = null;
        }
        f3Var3.f62422s.f63099d.setAdapter(this.H2);
        if (B5()) {
            return;
        }
        e5.f3 f3Var4 = this.I;
        if (f3Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
        } else {
            f3Var2 = f3Var4;
        }
        f3Var2.f62410g.f63030g.setVisibility(8);
    }

    private final void e6(boolean z9) {
        e5.f3 f3Var = null;
        if (z9) {
            n4 n4Var = this.K;
            if (n4Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
                n4Var = null;
            }
            TextSwitcher textSwitcher = n4Var.f62823x;
            Intrinsics.checkNotNullExpressionValue(textSwitcher, "giftBinding.swGiftFan");
            textSwitcher.setVisibility(y5() ? 0 : 8);
            L4().U0();
            n4 n4Var2 = this.K;
            if (n4Var2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
                n4Var2 = null;
            }
            n4Var2.f62814o.setVisibility(0);
            X5();
            n4 n4Var3 = this.K;
            if (n4Var3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
                n4Var3 = null;
            }
            ConstraintLayout constraintLayout = n4Var3.f62814o;
            Intrinsics.checkNotNullExpressionValue(constraintLayout, "giftBinding.layoutGift");
            com.qennnsad.aknkaksd.util.s1.N(constraintLayout);
            e5.f3 f3Var2 = this.I;
            if (f3Var2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
                f3Var2 = null;
            }
            f3Var2.f62420q.setVisibility(4);
            e5.f3 f3Var3 = this.I;
            if (f3Var3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
                f3Var3 = null;
            }
            f3Var3.f62410g.f63029f.setVisibility(4);
            m7();
            V5(Screen.StreamingRoom.Action.OpenGifts, null);
            return;
        }
        n4 n4Var4 = this.K;
        if (n4Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var4 = null;
        }
        n4Var4.f62814o.setVisibility(8);
        e5.f3 f3Var4 = this.I;
        if (f3Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var4 = null;
        }
        f3Var4.f62420q.setVisibility(0);
        e5.f3 f3Var5 = this.I;
        if (f3Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
        } else {
            f3Var = f3Var5;
        }
        f3Var.f62410g.f63029f.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e7(PlayerActivity this$0, FanClubInfoBean fanClubInfoBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.H5(fanClubInfoBean != null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f5(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PurchaseItemListFragmentDialog a10 = PurchaseItemListFragmentDialog.f53371m.a();
        a10.show(this$0.getSupportFragmentManager(), a10.getClass().getName());
    }

    private final void f6(final ViewGroup viewGroup) {
        viewGroup.setBackgroundResource(R.drawable.bg_room_blurred);
        viewGroup.setClickable(true);
        e5.f3 f3Var = this.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62418o.setVisibility(0);
        viewGroup.postDelayed(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.b1
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.g6(PlayerActivity.this, viewGroup);
            }
        }, master.flame.danmaku.danmaku.model.android.d.f87230r);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f7(PlayerActivity this$0, com.qennnsad.aknkaksd.util.t event) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(event, "event");
        this$0.G5((PlayerViewModel.a) event.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g5(PrivateLimitBean privateLimitBean) {
        String str;
        if (this.N2) {
            return;
        }
        Timber.f93860a.k("Initializing free preview timer", new Object[0]);
        this.N2 = true;
        this.S = privateLimitBean.getPreview_time();
        e5.f3 f3Var = this.I;
        e5.f3 f3Var2 = null;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62422s.f63097b.setVisibility(0);
        if (privateLimitBean.getPtid() == Integer.parseInt(g5.h.f67840d)) {
            str = "计费价格:" + BaseBeautyApplication.Companion.b().getMoney() + "金币/分钟";
        } else {
            str = "门票直播" + BaseBeautyApplication.Companion.b().getMoney() + com.qennnsad.aknkaksd.e.f48515g;
        }
        e5.f3 f3Var3 = this.I;
        if (f3Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var3 = null;
        }
        f3Var3.f62422s.f63100e.setText(str);
        e5.f3 f3Var4 = this.I;
        if (f3Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var4 = null;
        }
        f3Var4.f62422s.f63120y.setText("试看倒计时: " + this.S);
        e5.f3 f3Var5 = this.I;
        if (f3Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
        } else {
            f3Var2 = f3Var5;
        }
        f3Var2.f62422s.f63101f.setVisibility(8);
        this.f53652g1.postDelayed(this.f53651d3, TimeUnit.SECONDS.toMillis(1L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g6(PlayerActivity this$0, ViewGroup overlay) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(overlay, "$overlay");
        e5.f3 f3Var = this$0.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62418o.setVisibility(8);
        overlay.setClickable(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g7(final PlayerActivity this$0, final RoomAdBean roomAdBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        e5.f3 f3Var = this$0.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        s4 s4Var = f3Var.f62422s;
        if (roomAdBean != null) {
            String title = roomAdBean.getTitle();
            if (!(title == null || title.length() == 0)) {
                s4Var.f63102g.setVisibility(0);
                s4Var.f63103h.setVisibility(0);
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                final String format = String.format("%s!", Arrays.copyOf(new Object[]{roomAdBean.getTitle()}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                s4Var.f63102g.setText(format);
                s4Var.f63102g.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.g
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        PlayerActivity.h7(PlayerActivity.this, roomAdBean, format, view);
                    }
                });
                return;
            }
        }
        s4Var.f63102g.setVisibility(8);
        s4Var.f63103h.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h7(PlayerActivity this$0, RoomAdBean roomAdBean, String adTitle, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adTitle, "$adTitle");
        String url = roomAdBean.getUrl();
        Intrinsics.checkNotNullExpressionValue(url, "ad.url");
        com.qennnsad.aknkaksd.util.l.z(this$0, url, roomAdBean.getTarget(), false, false, 12, null);
        if (TextUtils.isEmpty(adTitle)) {
            adTitle = "点击下载送现金！";
        }
        this$0.V5(Screen.StreamingRoom.Action.OpenDJ, adTitle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i5(PlayerActivity this$0, UserInfo userInfo, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.E5()) {
            this$0.F4();
        } else {
            this$0.M4(userInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i7(PlayerActivity this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.I5(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j5(PlayerActivity this$0, UserInfo userInfo, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.P6(userInfo, BaseUserInfoDialog.UserType.COMMON, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j7(PlayerActivity this$0, boolean z9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        e5.f3 f3Var = this$0.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62422s.f63113r.setVisibility(z9 ? 8 : 0);
    }

    private final void k5() {
        List<t1> N = L4().N();
        e5.f3 f3Var = null;
        Animation animation = null;
        if (!N.isEmpty()) {
            v1 v1Var = new v1(N, new e());
            v1Var.j(N.size() > 1);
            this.R2 = v1Var;
            e5.f3 f3Var2 = this.I;
            if (f3Var2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
                f3Var2 = null;
            }
            LayoutCarousel layoutCarousel = f3Var2.f62421r.f62748c;
            v1 v1Var2 = this.R2;
            Intrinsics.checkNotNull(v1Var2);
            layoutCarousel.e(v1Var2);
            Intrinsics.checkNotNullExpressionValue(layoutCarousel, "");
            layoutCarousel.setVisibility(0);
            Animation animation2 = this.Z2;
            if (animation2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("shakeGameAnimation");
            } else {
                animation = animation2;
            }
            layoutCarousel.startAnimation(animation);
            L4().r0().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.w
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    PlayerActivity.l5(PlayerActivity.this, (Integer) obj);
                }
            });
            return;
        }
        e5.f3 f3Var3 = this.I;
        if (f3Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
        } else {
            f3Var = f3Var3;
        }
        LayoutCarousel layoutCarousel2 = f3Var.f62421r.f62748c;
        Intrinsics.checkNotNullExpressionValue(layoutCarousel2, "playerBinding.sidePanel.layoutCarousel");
        layoutCarousel2.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k7(PlayerActivity this$0, boolean z9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.M5(z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l5(PlayerActivity this$0, Integer it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        v1 v1Var = this$0.R2;
        if (v1Var != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            v1Var.k(new t1.b(it.intValue()));
        }
    }

    private final void l6() {
        e5.f3 f3Var = this.I;
        e5.f3 f3Var2 = null;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        com.qennnsad.aknkaksd.util.extentions.b.b(f3Var, com.qennnsad.aknkaksd.util.l.p(this));
        com.qennnsad.aknkaksd.data.repository.m sourceFactory = this.T;
        Intrinsics.checkNotNullExpressionValue(sourceFactory, "sourceFactory");
        this.W = new com.qennnsad.aknkaksd.presentation.ui.room.b(sourceFactory, new l());
        g5.a localDataManager = this.f52469j;
        Intrinsics.checkNotNullExpressionValue(localDataManager, "localDataManager");
        com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f fVar = new com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f(localDataManager, new ArrayList(), new m());
        this.f53647b1 = fVar;
        fVar.w(new n());
        com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f fVar2 = this.f53647b1;
        if (fVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatAdapter");
            fVar2 = null;
        }
        fVar2.v(new o());
        com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f fVar3 = this.f53647b1;
        if (fVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatAdapter");
            fVar3 = null;
        }
        fVar3.u(new p());
        e5.f3 f3Var3 = this.I;
        if (f3Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var3 = null;
        }
        PubChatRecyclerView pubChatRecyclerView = f3Var3.f62420q;
        com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f fVar4 = this.f53647b1;
        if (fVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatAdapter");
            fVar4 = null;
        }
        pubChatRecyclerView.setAdapter(fVar4);
        e5.f3 f3Var4 = this.I;
        if (f3Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var4 = null;
        }
        f3Var4.f62420q.addItemDecoration(new com.qennnsad.aknkaksd.presentation.ui.room.player.player.a());
        e5.f3 f3Var5 = this.I;
        if (f3Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var5 = null;
        }
        PubChatRecyclerView pubChatRecyclerView2 = f3Var5.f62422s.f63110o;
        com.qennnsad.aknkaksd.presentation.ui.room.b bVar = this.W;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("audienceAdapter");
            bVar = null;
        }
        pubChatRecyclerView2.setAdapter(bVar);
        e5.f3 f3Var6 = this.I;
        if (f3Var6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var6 = null;
        }
        ImageView imageView = f3Var6.f62410g.f63025b;
        Intrinsics.checkNotNullExpressionValue(imageView, "playerBinding.liveOperation.roomImgbtnGift");
        com.qennnsad.aknkaksd.util.f1.d(imageView, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.y0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.m6(PlayerActivity.this);
            }
        });
        e5.f3 f3Var7 = this.I;
        if (f3Var7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var7 = null;
        }
        RelativeLayout relativeLayout = f3Var7.f62413j.f62337l;
        Intrinsics.checkNotNullExpressionValue(relativeLayout, "playerBinding.playerContainer.videoPair");
        com.qennnsad.aknkaksd.util.f1.d(relativeLayout, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.v0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.n6(PlayerActivity.this);
            }
        });
        e5.f3 f3Var8 = this.I;
        if (f3Var8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var8 = null;
        }
        ImageView imageView2 = f3Var8.f62422s.f63108m;
        Intrinsics.checkNotNullExpressionValue(imageView2, "playerBinding.topAudience.roomImgbtnClose");
        com.qennnsad.aknkaksd.util.f1.d(imageView2, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.k0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.o6(PlayerActivity.this);
            }
        });
        e5.f3 f3Var9 = this.I;
        if (f3Var9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var9 = null;
        }
        ConstraintLayout constraintLayout = f3Var9.f62422s.f63111p;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "playerBinding.topAudience.roomSeatLayout");
        com.qennnsad.aknkaksd.util.f1.d(constraintLayout, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.f0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.p6(PlayerActivity.this);
            }
        });
        e5();
        z6();
        e5.f3 f3Var10 = this.I;
        if (f3Var10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var10 = null;
        }
        LinearLayout linearLayout = f3Var10.f62422s.f63109n;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "playerBinding.topAudience.roomOwner");
        com.qennnsad.aknkaksd.util.f1.d(linearLayout, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.j0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.q6(PlayerActivity.this);
            }
        });
        e5.f3 f3Var11 = this.I;
        if (f3Var11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var11 = null;
        }
        Button button = f3Var11.f62422s.f63113r;
        Intrinsics.checkNotNullExpressionValue(button, "playerBinding.topAudience.roomTopBarStartTv");
        com.qennnsad.aknkaksd.util.f1.d(button, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.i0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.r6(PlayerActivity.this);
            }
        });
        e5.f3 f3Var12 = this.I;
        if (f3Var12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var12 = null;
        }
        LinearLayout linearLayout2 = f3Var12.f62422s.f63105j;
        Intrinsics.checkNotNullExpressionValue(linearLayout2, "playerBinding.topAudience.roomCoinRankLay");
        com.qennnsad.aknkaksd.util.f1.d(linearLayout2, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.z0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.s6(PlayerActivity.this);
            }
        });
        e5.f3 f3Var13 = this.I;
        if (f3Var13 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var13 = null;
        }
        ImageButton imageButton = f3Var13.f62410g.f63028e;
        Intrinsics.checkNotNullExpressionValue(imageButton, "playerBinding.liveOperation.roomImgbtnShare");
        com.qennnsad.aknkaksd.util.f1.d(imageButton, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.h0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.t6(PlayerActivity.this);
            }
        });
        e5.f3 f3Var14 = this.I;
        if (f3Var14 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var14 = null;
        }
        ImageButton imageButton2 = f3Var14.f62410g.f63027d;
        Intrinsics.checkNotNullExpressionValue(imageButton2, "playerBinding.liveOperation.roomImgbtnScale");
        com.qennnsad.aknkaksd.util.f1.d(imageButton2, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.e0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.u6(PlayerActivity.this);
            }
        });
        e5.f3 f3Var15 = this.I;
        if (f3Var15 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var15 = null;
        }
        f3Var15.f62410g.f63031h.setVisibility(8);
        e5.f3 f3Var16 = this.I;
        if (f3Var16 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var16 = null;
        }
        ImageButton imageButton3 = f3Var16.f62410g.f63031h;
        Intrinsics.checkNotNullExpressionValue(imageButton3, "playerBinding.liveOperation.rotatePlayerView");
        com.qennnsad.aknkaksd.util.f1.d(imageButton3, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.q0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.v6(PlayerActivity.this);
            }
        });
        e5.f3 f3Var17 = this.I;
        if (f3Var17 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var17 = null;
        }
        ImageButton imageButton4 = f3Var17.f62410g.f63032i;
        Intrinsics.checkNotNullExpressionValue(imageButton4, "playerBinding.liveOperation.translationView");
        com.qennnsad.aknkaksd.util.f1.d(imageButton4, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.p0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.w6(PlayerActivity.this);
            }
        });
        e5.f3 f3Var18 = this.I;
        if (f3Var18 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
        } else {
            f3Var2 = f3Var18;
        }
        RelativeLayout relativeLayout2 = f3Var2.f62410g.f63026c;
        Intrinsics.checkNotNullExpressionValue(relativeLayout2, "playerBinding.liveOperation.roomImgbtnPublicChat");
        com.qennnsad.aknkaksd.util.f1.d(relativeLayout2, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.l0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.x6(PlayerActivity.this);
            }
        });
    }

    private final void l7() {
        Object systemService = getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        int rotation = ((WindowManager) systemService).getDefaultDisplay().getRotation();
        if (rotation != 0) {
            if (rotation != 1) {
                if (rotation != 2) {
                    if (rotation != 3) {
                        return;
                    }
                }
            }
            if (getRequestedOrientation() == 8) {
                BaseBeautyApplication.a aVar = BaseBeautyApplication.Companion;
                BaseBeautyApplication.pendingVideoRotation = 90;
                com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = this.R;
                if (gVar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
                    gVar = null;
                }
                Integer num = BaseBeautyApplication.pendingVideoRotation;
                Intrinsics.checkNotNull(num);
                gVar.H0(num.intValue());
                setRequestedOrientation(0);
                return;
            }
            b6();
            C2();
            BaseBeautyApplication.a aVar2 = BaseBeautyApplication.Companion;
            BaseBeautyApplication.pendingVideoRotation = 0;
            setRequestedOrientation(1);
            return;
        }
        b6();
        C2();
        BaseBeautyApplication.a aVar3 = BaseBeautyApplication.Companion;
        BaseBeautyApplication.pendingVideoRotation = Integer.valueOf((int) com.facebook.imagepipeline.common.e.f12206f);
        setRequestedOrientation(8);
    }

    private final void m5() {
        ImageView imageView = ((e5.i) J()).f62526j;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.testDialogButton");
        imageView.setVisibility(Intrinsics.areEqual("release", com.bumptech.glide.integration.webp.a.f8238c) ? 0 : 8);
        ((e5.i) J()).f62526j.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.x0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PlayerActivity.n5(PlayerActivity.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m6(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.e6(true);
    }

    private final void m7() {
        n4 n4Var = this.K;
        n4 n4Var2 = null;
        if (n4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var = null;
        }
        n4Var.f62822w.setDisplayedChild(1);
        n4 n4Var3 = this.K;
        if (n4Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var3 = null;
        }
        n4Var3.f62823x.setDisplayedChild(0);
        n4 n4Var4 = this.K;
        if (n4Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var4 = null;
        }
        n4Var4.f62824y.setDisplayedChild(0);
        W5();
        n4 n4Var5 = this.K;
        if (n4Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var5 = null;
        }
        n4Var5.f62805f.setVisibility(0);
        n4 n4Var6 = this.K;
        if (n4Var6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
        } else {
            n4Var2 = n4Var6;
        }
        n4Var2.f62818s.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n5(final PlayerActivity this$0, View view) {
        GiftAnimationUtil giftAnimationUtil;
        com.qennnsad.aknkaksd.util.animations.f fVar;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GiftAnimationUtil giftAnimationUtil2 = this$0.L;
        if (giftAnimationUtil2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftAnimationUtil");
            giftAnimationUtil = null;
        } else {
            giftAnimationUtil = giftAnimationUtil2;
        }
        com.qennnsad.aknkaksd.util.animations.f fVar2 = this$0.M;
        if (fVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("peerageAnimationUtil");
            fVar = null;
        } else {
            fVar = fVar2;
        }
        String O1 = this$0.O1();
        Intrinsics.checkNotNull(O1);
        com.qennnsad.aknkaksd.util.l.l0(this$0, giftAnimationUtil, fVar, Integer.parseInt(O1), new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.c0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.o5(PlayerActivity.this);
            }
        }, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.u0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.p5(PlayerActivity.this);
            }
        }, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.g0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.r5(PlayerActivity.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n6(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.qennnsad.aknkaksd.util.h1.j(this$0);
        this$0.e6(false);
        F6(this$0, false, null, 2, null);
    }

    private final void n7() {
        n4 n4Var = this.K;
        n4 n4Var2 = null;
        if (n4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var = null;
        }
        n4Var.f62822w.setDisplayedChild(0);
        n4 n4Var3 = this.K;
        if (n4Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var3 = null;
        }
        n4Var3.f62823x.setDisplayedChild(1);
        n4 n4Var4 = this.K;
        if (n4Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var4 = null;
        }
        n4Var4.f62824y.setDisplayedChild(0);
        W5();
        n4 n4Var5 = this.K;
        if (n4Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var5 = null;
        }
        n4Var5.f62805f.setVisibility(0);
        n4 n4Var6 = this.K;
        if (n4Var6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
        } else {
            n4Var2 = n4Var6;
        }
        n4Var2.f62818s.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o5(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        UserInfo value = this$0.L4().o0().getValue();
        Intrinsics.checkNotNull(value);
        this$0.M4(value);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o6(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.G4(true);
    }

    private final void o7() {
        n4 n4Var = this.K;
        n4 n4Var2 = null;
        if (n4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var = null;
        }
        n4Var.f62822w.setDisplayedChild(0);
        n4 n4Var3 = this.K;
        if (n4Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var3 = null;
        }
        n4Var3.f62823x.setDisplayedChild(0);
        n4 n4Var4 = this.K;
        if (n4Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var4 = null;
        }
        n4Var4.f62824y.setDisplayedChild(1);
        n4 n4Var5 = this.K;
        if (n4Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var5 = null;
        }
        n4Var5.f62805f.setVisibility(8);
        n4 n4Var6 = this.K;
        if (n4Var6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
        } else {
            n4Var2 = n4Var6;
        }
        n4Var2.f62818s.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p5(final PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((e5.i) this$0.J()).f62526j.postDelayed(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.a1
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.q5(PlayerActivity.this);
            }
        }, com.google.android.exoplayer2.k2.f23783i1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p6(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.V5(Screen.StreamingRoom.Action.OpenVipSeats, null);
        RoomSeatRankDialog.a aVar = RoomSeatRankDialog.f54143l;
        String O1 = this$0.O1();
        Intrinsics.checkNotNull(O1);
        String K1 = this$0.K1();
        Intrinsics.checkNotNull(K1);
        aVar.a(O1, K1).show(this$0.getSupportFragmentManager(), (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q5(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.R6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q6(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        UserInfo value = this$0.L4().o0().getValue();
        Intrinsics.checkNotNull(value);
        Q6(this$0, value, null, false, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q7(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        e5.f3 f3Var = this$0.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62414k.setVisibility(8);
    }

    private final void r4(boolean z9) {
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = null;
        com.qennnsad.aknkaksd.util.toast.a.n(z9 ? "PK对手主机下线" : "该主播已下播", false, 2, null);
        if (z9) {
            return;
        }
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar2 = this.R;
        if (gVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
        } else {
            gVar = gVar2;
        }
        gVar.F0();
        R6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r5(final PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((e5.i) this$0.J()).f62526j.postDelayed(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.o0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.s5(PlayerActivity.this);
            }
        }, com.google.android.exoplayer2.k2.f23783i1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r6(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PlayerViewModel.M(this$0.L4(), false, 1, null);
    }

    private final void r7(long j4) {
        e5.f3 f3Var = this.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        BlockTextView blockTextView = f3Var.f62414k;
        blockTextView.removeCallbacks(this.f53654p1);
        blockTextView.postDelayed(this.f53654p1, j4 * 1000);
    }

    private final void s4(int i4, String str) {
        Timber.f93860a.k("Applying watermark params. Position: " + i4 + ", Content: " + str, new Object[0]);
        Boolean value = L4().d0().getValue();
        Intrinsics.checkNotNull(value);
        e5.f3 f3Var = null;
        if (value.booleanValue()) {
            e5.f3 f3Var2 = this.I;
            if (f3Var2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            } else {
                f3Var = f3Var2;
            }
            f3Var.f62409f.setVisibility(8);
            return;
        }
        e5.f3 f3Var3 = this.I;
        if (f3Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var3 = null;
        }
        f3Var3.f62409f.setVisibility(0);
        Bitmap a10 = com.qennnsad.aknkaksd.util.l1.a(str, 17.0f, this);
        if (a10 != null) {
            e5.f3 f3Var4 = this.I;
            if (f3Var4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
                f3Var4 = null;
            }
            f3Var4.f62409f.setImageBitmap(a10);
            int h4 = com.qennnsad.aknkaksd.util.h1.h(this) / 10;
            int f10 = com.qennnsad.aknkaksd.util.h1.f(this, 10);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            if (i4 == 0) {
                layoutParams.addRule(10);
                layoutParams.addRule(20);
                layoutParams.setMargins(f10, h4, 0, 0);
            } else if (i4 == 1) {
                layoutParams.addRule(12);
                layoutParams.addRule(20);
                layoutParams.setMargins(f10, 0, 0, h4);
            } else if (i4 != 2) {
                layoutParams.addRule(12);
                layoutParams.addRule(21);
                layoutParams.setMargins(0, 0, f10, h4);
            } else {
                layoutParams.addRule(10);
                layoutParams.addRule(21);
                layoutParams.setMargins(0, h4, f10, 0);
            }
            e5.f3 f3Var5 = this.I;
            if (f3Var5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
                f3Var5 = null;
            }
            f3Var5.f62409f.setLayoutParams(layoutParams);
            e5.f3 f3Var6 = this.I;
            if (f3Var6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            } else {
                f3Var = f3Var6;
            }
            f3Var.f62409f.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s5(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.E2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s6(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ContributorsActivity.a aVar = ContributorsActivity.f51292d;
        String K1 = this$0.K1();
        Intrinsics.checkNotNull(K1);
        aVar.a(this$0, K1);
    }

    private final void s7() {
        UserMoney s02 = L4().s0();
        Intrinsics.checkNotNull(s02);
        int coinbalance = s02.getCoinbalance();
        UserMoney s03 = L4().s0();
        Intrinsics.checkNotNull(s03);
        int remainForNextLev = s03.getRemainForNextLev();
        Timber.f93860a.k("Updating GoldProgress. Balance= " + coinbalance + ", Next-level=" + remainForNextLev, new Object[0]);
        n4 n4Var = this.K;
        n4 n4Var2 = null;
        if (n4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var = null;
        }
        ImageView imageView = n4Var.f62808i;
        Intrinsics.checkNotNullExpressionValue(imageView, "giftBinding.goldLevelIc");
        UserBean C = this.f52469j.C();
        Intrinsics.checkNotNull(C);
        com.qennnsad.aknkaksd.util.s1.A(imageView, C.getEmceelevel(), false);
        n4 n4Var3 = this.K;
        if (n4Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var3 = null;
        }
        n4Var3.f62807h.setText(String.valueOf(coinbalance));
        n4 n4Var4 = this.K;
        if (n4Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var4 = null;
        }
        n4Var4.f62812m.setMax(coinbalance + remainForNextLev);
        n4 n4Var5 = this.K;
        if (n4Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var5 = null;
        }
        n4Var5.f62812m.setProgress(coinbalance);
        n4 n4Var6 = this.K;
        if (n4Var6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
            n4Var6 = null;
        }
        n4Var6.f62810k.setText(getString(R.string.gift_panel_progress_next, new Object[]{Integer.valueOf(remainForNextLev)}));
        n4 n4Var7 = this.K;
        if (n4Var7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftBinding");
        } else {
            n4Var2 = n4Var7;
        }
        n4Var2.f62817r.setText(String.valueOf(coinbalance));
    }

    private final int t4(Gift gift) {
        UserMoney s02 = L4().s0();
        Intrinsics.checkNotNull(s02);
        double coinbalance = s02.getCoinbalance();
        String isred = gift.getIsred();
        Intrinsics.checkNotNullExpressionValue(isred, "selectedGift.isred");
        if (Integer.parseInt(isred) > 1) {
            return Math.min(this.K2, gift.getPrice() != 0 ? (int) (coinbalance / gift.getPrice()) : Integer.MAX_VALUE);
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat t5(PlayerActivity this$0, View v9, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(v9, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        int i4 = insets.getInsets(WindowInsetsCompat.Type.ime()).bottom;
        v9.setPadding(v9.getPaddingLeft(), v9.getPaddingTop(), v9.getPaddingRight(), -i4);
        if (i4 > 40) {
            p4 p4Var = this$0.J;
            p4 p4Var2 = null;
            if (p4Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
                p4Var = null;
            }
            ViewGroup.LayoutParams layoutParams = p4Var.f62915b.getLayoutParams();
            layoutParams.height = i4;
            p4 p4Var3 = this$0.J;
            if (p4Var3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
            } else {
                p4Var2 = p4Var3;
            }
            p4Var2.f62915b.setLayoutParams(layoutParams);
        }
        return insets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t6(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.L4().p0();
        e5.f3 f3Var = this$0.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62410g.f63028e.clearAnimation();
    }

    private final void u4() {
        O6(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u5(PlayerActivity this$0, Unit o9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(o9, "o");
        Object systemService = this$0.getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        p4 p4Var = this$0.J;
        if (p4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
            p4Var = null;
        }
        inputMethodManager.hideSoftInputFromWindow(p4Var.f62921h.getWindowToken(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u6(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.w4();
    }

    private final void v4() {
        io.reactivex.disposables.c cVar;
        io.reactivex.disposables.c cVar2 = this.f53659y2;
        if (cVar2 != null) {
            Intrinsics.checkNotNull(cVar2);
            if (cVar2.isDisposed() || (cVar = this.f53659y2) == null) {
                return;
            }
            cVar.dispose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean v5(PlayerActivity this$0, Unit o9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(o9, "o");
        p4 p4Var = this$0.J;
        if (p4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
            p4Var = null;
        }
        return !TextUtils.isEmpty(p4Var.f62921h.getText().toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v6(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.l7();
    }

    private final void w4() {
        int i4 = this.X2 + 1;
        this.X2 = i4;
        int i10 = i4 % 2;
        Timber.b bVar = Timber.f93860a;
        bVar.k("changeScale:--mVideoScaleIndex:" + this.X2 + "----mode:" + i10, new Object[0]);
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = this.R;
        if (gVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
            gVar = null;
        }
        gVar.b0(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w5(PlayerActivity this$0, Unit o9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(o9, "o");
        p4 p4Var = this$0.J;
        if (p4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
            p4Var = null;
        }
        String obj = p4Var.f62921h.getText().toString();
        if (this$0.T1) {
            PlayerViewModel L4 = this$0.L4();
            String O1 = this$0.O1();
            Intrinsics.checkNotNull(O1);
            L4.K0(O1, obj);
        } else {
            this$0.f52480u.H(this$0.L4().u0().j(obj));
        }
        p4 p4Var2 = this$0.J;
        if (p4Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
            p4Var2 = null;
        }
        p4Var2.f62921h.setText("");
        F6(this$0, false, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w6(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.O0();
    }

    private final void x4() {
        com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.receive.a aVar = this.H2;
        if (aVar != null) {
            Intrinsics.checkNotNull(aVar);
            if (aVar.getItemCount() == 3) {
                com.qennnsad.aknkaksd.util.toast.a.m(R.string.pinned_msg_limit_warn, false, 2, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x5(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        p4 p4Var = null;
        if (this$0.T1) {
            p4 p4Var2 = this$0.J;
            if (p4Var2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
                p4Var2 = null;
            }
            p4Var2.f62921h.setHint("说点什么吧...");
            p4 p4Var3 = this$0.J;
            if (p4Var3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
                p4Var3 = null;
            }
            p4Var3.f62919f.setVisibility(0);
            p4 p4Var4 = this$0.J;
            if (p4Var4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
            } else {
                p4Var = p4Var4;
            }
            p4Var.f62920g.setVisibility(4);
            this$0.T1 = false;
            return;
        }
        p4 p4Var5 = this$0.J;
        if (p4Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
            p4Var5 = null;
        }
        p4Var5.f62921h.setHint("发送弹幕主播收费100" + this$0.getString(R.string.gold) + "/条");
        p4 p4Var6 = this$0.J;
        if (p4Var6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
            p4Var6 = null;
        }
        p4Var6.f62920g.setVisibility(0);
        p4 p4Var7 = this$0.J;
        if (p4Var7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
        } else {
            p4Var = p4Var7;
        }
        p4Var.f62919f.setVisibility(4);
        this$0.T1 = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x6(PlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        F6(this$0, true, null, 2, null);
    }

    private final void y4() {
        if (this.M2 != null) {
            com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = this.R;
            if (gVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
                gVar = null;
            }
            if (gVar.J() && z5()) {
                Runnable runnable = this.M2;
                Intrinsics.checkNotNull(runnable);
                runnable.run();
                this.M2 = null;
            }
        }
    }

    private final boolean y5() {
        List<? extends Gift> list;
        if (L4().x0() && (list = this.f53653g2) != null) {
            Intrinsics.checkNotNull(list);
            if (list.size() > 0) {
                return true;
            }
        }
        return false;
    }

    private final void y6() {
        ((e5.i) J()).f62525i.setScrollableLayoutListener(this);
        if (this.I2 == 0 && L1() != null) {
            List<LiveSummary> O = L4().O();
            DistrictType T = L4().T();
            LiveSummary L1 = L1();
            Intrinsics.checkNotNull(L1);
            this.I2 = b5.a.d(O, T, L1);
        }
        ((e5.i) J()).f62525i.setCurrentItem(this.I2);
    }

    private final void z4(PrivateLimitBean privateLimitBean) {
        if (privateLimitBean.getInPkWith() != 0) {
            I6();
            L4().R0(privateLimitBean.getIsPkSender() == 1, String.valueOf(privateLimitBean.getInPkWith()));
            return;
        }
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = this.R;
        if (gVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
            gVar = null;
        }
        gVar.r(null);
        LiveSummary L1 = L1();
        Intrinsics.checkNotNull(L1);
        L1.setPk(null);
        L4().d0().setValue(Boolean.FALSE);
    }

    private final boolean z5() {
        return L4().f0() == 1;
    }

    private final void z6() {
        ArrayList arrayList = new ArrayList();
        e5.f3 f3Var = this.I;
        e5.f3 f3Var2 = null;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        int childCount = f3Var.f62419p.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            e5.f3 f3Var3 = this.I;
            if (f3Var3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
                f3Var3 = null;
            }
            View child = f3Var3.f62419p.getChildAt(i4);
            if (child.getId() != R.id.playerContainer && child.getId() != R.id.iv_watermark && child.getId() != R.id.room_block) {
                Intrinsics.checkNotNullExpressionValue(child, "child");
                arrayList.add(child);
            }
        }
        e5.f3 f3Var4 = this.I;
        if (f3Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var4 = null;
        }
        LinearLayout root = f3Var4.f62421r.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "playerBinding.sidePanel.root");
        arrayList.add(root);
        e5.f3 f3Var5 = this.I;
        if (f3Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
        } else {
            f3Var2 = f3Var5;
        }
        SVGAImageView sVGAImageView = f3Var2.f62413j.f62333h;
        Intrinsics.checkNotNullExpressionValue(sVGAImageView, "playerBinding.playerContainer.roomSvga");
        arrayList.add(sVGAImageView);
        ((e5.i) J()).f62523g.m();
        ((e5.i) J()).f62523g.setSwipeContentView(arrayList);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity
    public void A0(@m8.h String str) {
        this.f52469j.e0(new Triple<>(Boolean.TRUE, L1(), L4().T()));
        F4();
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity
    @m8.g
    /* renamed from: B4 */
    public e5.i I(@m8.g LayoutInflater layoutInflater) {
        Intrinsics.checkNotNullParameter(layoutInflater, "layoutInflater");
        e5.i c10 = e5.i.c(layoutInflater);
        Intrinsics.checkNotNullExpressionValue(c10, "inflate(layoutInflater)");
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity, com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity
    public void C0(@m8.g Intent intent, boolean z9, @m8.h Bundle bundle) {
        Bundle extras;
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar;
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.C0(intent, z9, bundle);
        this.G2 = z9;
        PlayerViewModel L4 = L4();
        DistrictType districtType = (DistrictType) intent.getSerializableExtra(f53645i3);
        Intrinsics.checkNotNull(districtType);
        L4.N0(districtType);
        Boolean value = L4().d0().getValue();
        Intrinsics.checkNotNull(value);
        boolean booleanValue = value.booleanValue();
        if (booleanValue) {
            if (intent.getBooleanExtra(f53643g3, false)) {
                L4().d0().setValue(Boolean.FALSE);
            }
            Boolean value2 = L4().d0().getValue();
            Intrinsics.checkNotNull(value2);
            booleanValue = value2.booleanValue();
            if (booleanValue) {
                I6();
            }
        }
        LiveSummary liveSummary = null;
        if (z9) {
            com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar2 = this.R;
            if (gVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
                gVar = null;
            } else {
                gVar = gVar2;
            }
            com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g.u0(gVar, false, false, false, 6, null);
        }
        Timber.b bVar = Timber.f93860a;
        bVar.k("xxx Parse Data. Is new Intent: %s", Boolean.valueOf(z9));
        String K1 = K1();
        LiveSummary L1 = L1();
        if (bundle != null) {
            liveSummary = (LiveSummary) bundle.getParcelable("survivor");
            int i4 = bundle.getInt("pos", 0);
            this.I2 = i4;
            if (i4 == -1) {
                this.I2 = 0;
            }
            bVar.k("xxx Survivor: %s", liveSummary);
            bVar.k("xxx Restored Pos: %s", Integer.valueOf(this.I2));
            L4().n0().setValue(liveSummary);
            L1 = liveSummary;
        }
        if (liveSummary == null && (extras = intent.getExtras()) != null) {
            L1 = (LiveSummary) extras.getParcelable(f53644h3);
            L4().n0().setValue(L1);
        }
        if (z9) {
            StringBuilder sb = new StringBuilder();
            sb.append("On new intent. New ID: ");
            Intrinsics.checkNotNull(L1);
            sb.append(L1.getId());
            sb.append(", Last ID: ");
            sb.append(K1);
            sb.append(", isPK: ");
            sb.append(booleanValue);
            bVar.k(sb.toString(), new Object[0]);
            if (!Intrinsics.areEqual(L1.getId(), K1)) {
                this.I2 = 0;
                L4().v0(L1, this.I2);
                D4();
                y6();
            }
            setIntent(intent);
        } else if (E5() || L4().O().isEmpty()) {
            List<LiveSummary> O = L4().O();
            Intrinsics.checkNotNull(L1);
            O.add(0, L1);
            this.I2 = 0;
        }
    }

    @JvmOverloads
    public final void D6(boolean z9) {
        F6(this, z9, null, 2, null);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void E2() {
        W6();
        this.W2 = RoomFinishedFragment.f53267k.a(true);
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        RoomFinishedFragment roomFinishedFragment = this.W2;
        Intrinsics.checkNotNull(roomFinishedFragment);
        beginTransaction.replace(R.id.fragment_container, roomFinishedFragment).commit();
        getSupportFragmentManager().executePendingTransactions();
    }

    protected boolean E5() {
        return false;
    }

    @JvmOverloads
    public final void E6(boolean z9, @m8.h String str) {
        Timber.f93860a.k("showInputLayout:%s", Boolean.valueOf(z9));
        Object systemService = getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        p4 p4Var = null;
        e5.f3 f3Var = null;
        if (z9) {
            if (!TextUtils.isEmpty(str)) {
                p4 p4Var2 = this.J;
                if (p4Var2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
                    p4Var2 = null;
                }
                p4Var2.f62921h.setText(str);
            }
            p4 p4Var3 = this.J;
            if (p4Var3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
                p4Var3 = null;
            }
            p4Var3.f62922i.setVisibility(0);
            e5.f3 f3Var2 = this.I;
            if (f3Var2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
                f3Var2 = null;
            }
            f3Var2.f62422s.f63107l.setVisibility(4);
            Animation loadAnimation = AnimationUtils.loadAnimation(this, R.anim.top_out);
            e5.f3 f3Var3 = this.I;
            if (f3Var3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
                f3Var3 = null;
            }
            f3Var3.f62422s.f63107l.startAnimation(loadAnimation);
            p4 p4Var4 = this.J;
            if (p4Var4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
                p4Var4 = null;
            }
            p4Var4.f62921h.setFocusable(true);
            p4 p4Var5 = this.J;
            if (p4Var5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
                p4Var5 = null;
            }
            p4Var5.f62921h.requestFocus();
            p4 p4Var6 = this.J;
            if (p4Var6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
                p4Var6 = null;
            }
            inputMethodManager.showSoftInput(p4Var6.f62921h, 2);
            inputMethodManager.toggleSoftInput(2, 1);
            e5.f3 f3Var4 = this.I;
            if (f3Var4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            } else {
                f3Var = f3Var4;
            }
            f3Var.f62410g.f63029f.setVisibility(4);
            return;
        }
        e5.f3 f3Var5 = this.I;
        if (f3Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var5 = null;
        }
        f3Var5.f62410g.f63029f.setVisibility(0);
        e5.f3 f3Var6 = this.I;
        if (f3Var6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var6 = null;
        }
        if (f3Var6.f62422s.f63107l.getVisibility() != 0) {
            new Handler().postDelayed(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.r0
                @Override // java.lang.Runnable
                public final void run() {
                    PlayerActivity.G6(PlayerActivity.this);
                }
            }, 50L);
        }
        p4 p4Var7 = this.J;
        if (p4Var7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
            p4Var7 = null;
        }
        p4Var7.f62921h.setText("");
        p4 p4Var8 = this.J;
        if (p4Var8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
            p4Var8 = null;
        }
        p4Var8.f62922i.setVisibility(8);
        p4 p4Var9 = this.J;
        if (p4Var9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
        } else {
            p4Var = p4Var9;
        }
        inputMethodManager.hideSoftInputFromWindow(p4Var.f62921h.getWindowToken(), 0);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void F2(@m8.g RoomPublicMsg msg) {
        com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f fVar;
        com.qennnsad.aknkaksd.util.sound.a aVar;
        String trimIndent;
        com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f fVar2;
        Intrinsics.checkNotNullParameter(msg, "msg");
        Timber.b bVar = Timber.f93860a;
        bVar.k("LocalRoomMsg-wsChatPublicMsg:" + msg, new Object[0]);
        e5.f3 f3Var = this.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62420q.addOnScrollListener(new y());
        if (msg instanceof UserPublicMsg) {
            bVar.k("wsChatPublicMsg:-----roomid" + O1() + "wsChatPublicMsg:" + msg, new Object[0]);
            UserPublicMsg userPublicMsg = (UserPublicMsg) msg;
            if (Intrinsics.areEqual(userPublicMsg.getFly(), "FlyMsg")) {
                Q5(userPublicMsg);
            }
        } else if (msg instanceof SystemWelcome) {
            Timber.c H = bVar.H("Enter room");
            H.k("handleData:进入房间:" + msg, new Object[0]);
            SystemWelcome systemWelcome = (SystemWelcome) msg;
            if (systemWelcome.getLevelid() >= 5) {
                com.qennnsad.aknkaksd.util.danmu.c cVar = this.P2;
                if (cVar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mLevelDanmuControl");
                    cVar = null;
                }
                cVar.b(new Danmu(0L, systemWelcome.getLevelid(), "Comment", systemWelcome.getClient_name(), systemWelcome.getEffect_id()), 0);
            }
            if (systemWelcome.getEffect_sound() == 1 && (aVar = this.Q) != null) {
                aVar.d();
            }
            com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f fVar3 = this.f53647b1;
            if (fVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatAdapter");
                fVar3 = null;
            }
            fVar3.o(msg);
            e5.f3 f3Var2 = this.I;
            if (f3Var2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
                f3Var2 = null;
            }
            PubChatRecyclerView pubChatRecyclerView = f3Var2.f62420q;
            com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f fVar4 = this.f53647b1;
            if (fVar4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatAdapter");
                fVar = null;
            } else {
                fVar = fVar4;
            }
            pubChatRecyclerView.scrollToPosition(fVar.getItemCount() - 1);
            return;
        } else if (msg instanceof SendGiftMsg) {
            String O1 = O1();
            if (!Intrinsics.areEqual(O1, "" + ((SendGiftMsg) msg).getRoom_id())) {
                return;
            }
        }
        Timber.c H2 = bVar.H("wsChatPublicMsg-add");
        trimIndent = StringsKt__IndentKt.trimIndent("roomid: " + O1() + "-----" + msg);
        H2.k(trimIndent, new Object[0]);
        com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f fVar5 = this.f53647b1;
        if (fVar5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatAdapter");
            fVar5 = null;
        }
        fVar5.o(msg);
        if (this.f53655p2) {
            e5.f3 f3Var3 = this.I;
            if (f3Var3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
                f3Var3 = null;
            }
            PubChatRecyclerView pubChatRecyclerView2 = f3Var3.f62420q;
            com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f fVar6 = this.f53647b1;
            if (fVar6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatAdapter");
                fVar2 = null;
            } else {
                fVar2 = fVar6;
            }
            pubChatRecyclerView2.scrollToPosition(fVar2.getItemCount() - 1);
        }
    }

    protected void F5(boolean z9) {
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void G1(@m8.g BlockMsg msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        e5.f3 f3Var = this.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        BlockTextView blockTextView = f3Var.f62414k;
        blockTextView.setText(msg.getMessage());
        blockTextView.setVisibility(0);
        r7(msg.getDuration());
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    public void G2(@m8.g SendGiftMsg sendGiftMsg) {
        GiftAnimationUtil giftAnimationUtil;
        Intrinsics.checkNotNullParameter(sendGiftMsg, "sendGiftMsg");
        Timber.b bVar = Timber.f93860a;
        bVar.H("Gift").k("send: " + sendGiftMsg, new Object[0]);
        if (!Intrinsics.areEqual(O1(), sendGiftMsg.getRoom_id() + "")) {
            bVar.H("Gift").x("Wrong room id", new Object[0]);
            return;
        }
        GiftAnimationUtil giftAnimationUtil2 = this.L;
        e5.f3 f3Var = null;
        if (giftAnimationUtil2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giftAnimationUtil");
            giftAnimationUtil = null;
        } else {
            giftAnimationUtil = giftAnimationUtil2;
        }
        GiftAnimationUtil.z(giftAnimationUtil, sendGiftMsg, false, false, 6, null);
        if (sendGiftMsg.getShowChatMsg() != null) {
            Boolean showChatMsg = sendGiftMsg.getShowChatMsg();
            Intrinsics.checkNotNullExpressionValue(showChatMsg, "sendGiftMsg.showChatMsg");
            if (showChatMsg.booleanValue()) {
                F2(sendGiftMsg);
            }
        }
        if (Intrinsics.areEqual(sendGiftMsg.getIsred(), "1")) {
            return;
        }
        e5.f3 f3Var2 = this.I;
        if (f3Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
        } else {
            f3Var = f3Var2;
        }
        f3Var.f62422s.C.setText(this.O.format(sendGiftMsg.getAnchorBalance()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void G4(boolean z9) {
        if (this.f52475p) {
            return;
        }
        E4();
        this.f52475p = true;
        if (!z9 && E5()) {
            Boolean value = L4().d0().getValue();
            Intrinsics.checkNotNull(value);
            if (value.booleanValue()) {
                this.f53793y = true;
                Intent intent = new Intent();
                Gson gson = this.N;
                com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = this.R;
                if (gVar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
                    gVar = null;
                }
                intent.putExtra("broadcast", gson.toJson(gVar.E()));
                setResult(-1, intent);
                finish();
                return;
            }
        }
        this.f53793y = false;
        MainContainerActivity.f52459m.b(this, true);
    }

    @m8.g
    public final com.qennnsad.aknkaksd.util.e0 H4() {
        com.qennnsad.aknkaksd.util.e0 e0Var = this.U;
        if (e0Var != null) {
            return e0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("fanClubUtil");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void H6() {
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = this.R;
        if (gVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
            gVar = null;
        }
        gVar.v0(E5());
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected int I1() {
        UserMoney s02 = L4().s0();
        Integer valueOf = s02 != null ? Integer.valueOf(s02.getCoinbalance()) : null;
        Intrinsics.checkNotNull(valueOf);
        return valueOf.intValue();
    }

    protected final int I4() {
        return this.S;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void J1() {
        F4();
    }

    @m8.g
    public final com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c J4() {
        com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c cVar = this.V;
        if (cVar != null) {
            return cVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("msgUtils");
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    @m8.h
    public String K1() {
        LiveSummary value = L4().n0().getValue();
        if (value != null) {
            return value.getId();
        }
        return null;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m K4() {
        com.qennnsad.aknkaksd.data.repository.m mVar = this.T;
        if (mVar != null) {
            return mVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sourceFactory");
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.p
    public void L(int i4, @m8.h String str) {
        F4();
        if (i4 != 1 && i4 != 2) {
            A0(str);
        } else {
            v(str);
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity
    protected void L0() {
        if (Build.VERSION.SDK_INT != 21) {
            getWindow().addFlags(67108864);
        } else {
            Window window = getWindow();
            window.clearFlags(201326592);
            window.getDecorView().setSystemUiVisibility(com.im.freechat.utils.h.f43782b);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
        }
        J0();
        o0();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    @m8.h
    protected LiveSummary L1() {
        return L4().n0().getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public final PlayerViewModel L4() {
        PlayerViewModel playerViewModel = this.H;
        if (playerViewModel != null) {
            return playerViewModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected long M1() {
        return L4().e0();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    @m8.g
    protected String N1() {
        return String.valueOf(L4().f0());
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    @m8.h
    protected String O1() {
        LiveSummary value = L4().n0().getValue();
        if (value != null) {
            return value.getCurroomnum();
        }
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity
    protected void P0() {
        PlayerViewModel L4 = L4();
        L4.l0().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.v
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PlayerActivity.j7(PlayerActivity.this, ((Boolean) obj).booleanValue());
            }
        });
        L4.d0().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.t
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PlayerActivity.k7(PlayerActivity.this, ((Boolean) obj).booleanValue());
            }
        });
        L4.d().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.u
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PlayerActivity.X6(PlayerActivity.this, ((Boolean) obj).booleanValue());
            }
        });
        L4.f().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.r
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PlayerActivity.Y6(PlayerActivity.this, (com.qennnsad.aknkaksd.util.t) obj);
            }
        });
        L4.k0().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.j
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PlayerActivity.Z6(PlayerActivity.this, (Uri) obj);
            }
        });
        L4.n0().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.k
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PlayerActivity.a7(PlayerActivity.this, (LiveSummary) obj);
            }
        });
        L4.o0().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.m
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PlayerActivity.b7(PlayerActivity.this, (UserInfo) obj);
            }
        });
        L4.m0().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.o
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PlayerActivity.c7(PlayerActivity.this, (PrivateLimitBean) obj);
            }
        });
        L4.Q().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.y
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PlayerActivity.d7(PlayerActivity.this, (List) obj);
            }
        });
        L4.U().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.l
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PlayerActivity.e7(PlayerActivity.this, (FanClubInfoBean) obj);
            }
        });
        L4.c().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.s
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PlayerActivity.f7(PlayerActivity.this, (com.qennnsad.aknkaksd.util.t) obj);
            }
        });
        L4.j0().observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.p
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PlayerActivity.g7(PlayerActivity.this, (RoomAdBean) obj);
            }
        });
        com.qennnsad.aknkaksd.util.u.e(L4.b0().f67822h).observe(this, new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.x
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                PlayerActivity.i7(PlayerActivity.this, (List) obj);
            }
        });
        L4.T0();
        this.Q = com.qennnsad.aknkaksd.util.sound.a.a();
        F0();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    public int P1() {
        PrivateLimitBean value = L4().m0().getValue();
        Intrinsics.checkNotNull(value);
        return value.getPtid();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void P6(@m8.g UserInfo info, @m8.h BaseUserInfoDialog.UserType userType, boolean z9) {
        Intrinsics.checkNotNullParameter(info, "info");
        if (this.U2) {
            return;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "supportFragmentManager");
        String K1 = K1();
        Intrinsics.checkNotNull(K1);
        String O1 = O1();
        Intrinsics.checkNotNull(O1);
        Intrinsics.checkNotNull(userType);
        com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.o.d(supportFragmentManager, info, K1, O1, userType, L4().z0(), true, z9, false, new v(), new w(), new x(z9), null, 2048, null);
    }

    public void V6(@m8.g UserInfo info, @m8.h DistrictType districtType) {
        Intrinsics.checkNotNullParameter(info, "info");
        HotAnchorSummary p9 = b5.a.p(info);
        a aVar = f53641e3;
        Intrinsics.checkNotNull(districtType);
        aVar.c(this, p9, districtType);
    }

    public final void d6(@m8.g com.qennnsad.aknkaksd.util.e0 e0Var) {
        Intrinsics.checkNotNullParameter(e0Var, "<set-?>");
        this.U = e0Var;
    }

    @Override // com.qennnsad.aknkaksd.data.websocket.WebSocketService.b
    public void h() {
        if (!this.U2 && this.F2) {
            this.F2 = false;
            if (!z5()) {
                O6(true);
                L4().H0(false);
            }
            L4().Z0();
        }
    }

    protected void h5(@m8.h final UserInfo userInfo) {
        e5.f3 f3Var = this.I;
        e5.f3 f3Var2 = null;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        SimpleDraweeView simpleDraweeView = f3Var.f62413j.f62334i.f62717c;
        com.qennnsad.aknkaksd.data.repository.m mVar = this.T;
        Intrinsics.checkNotNull(userInfo);
        String avatar = userInfo.getAvatar();
        Intrinsics.checkNotNullExpressionValue(avatar, "info!!.avatar");
        simpleDraweeView.setImageURI(mVar.j(avatar));
        e5.f3 f3Var3 = this.I;
        if (f3Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var3 = null;
        }
        f3Var3.f62413j.f62334i.f62719e.setText(userInfo.getNickname());
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.l1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PlayerActivity.i5(PlayerActivity.this, userInfo, view);
            }
        };
        e5.f3 f3Var4 = this.I;
        if (f3Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var4 = null;
        }
        f3Var4.f62413j.f62334i.f62717c.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.k1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PlayerActivity.j5(PlayerActivity.this, userInfo, view);
            }
        });
        e5.f3 f3Var5 = this.I;
        if (f3Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var5 = null;
        }
        f3Var5.f62413j.f62334i.f62719e.setOnClickListener(onClickListener);
        e5.f3 f3Var6 = this.I;
        if (f3Var6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
        } else {
            f3Var2 = f3Var6;
        }
        f3Var2.f62413j.f62334i.f62716b.setOnClickListener(onClickListener);
    }

    protected final void h6(int i4) {
        this.S = i4;
    }

    @Override // io.github.rockerhieu.emojicon.c.a
    public void i(@m8.g Emojicon emojicon) {
        Intrinsics.checkNotNullParameter(emojicon, "emojicon");
        p4 p4Var = this.J;
        if (p4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
            p4Var = null;
        }
        io.github.rockerhieu.emojicon.f.X(p4Var.f62921h, emojicon);
    }

    public final void i6(@m8.g com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<set-?>");
        this.V = cVar;
    }

    public boolean j(int i4) {
        return L4().X();
    }

    public final void j6(@m8.g com.qennnsad.aknkaksd.data.repository.m mVar) {
        Intrinsics.checkNotNullParameter(mVar, "<set-?>");
        this.T = mVar;
    }

    public boolean k(int i4) {
        return L4().Z();
    }

    protected final void k6(@m8.g PlayerViewModel playerViewModel) {
        Intrinsics.checkNotNullParameter(playerViewModel, "<set-?>");
        this.H = playerViewModel;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity, com.qennnsad.aknkaksd.presentation.ui.base.n
    public void n() {
        super.n();
        O6(false);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity
    @m8.g
    protected com.qennnsad.aknkaksd.presentation.common.l<?> n0() {
        k6((PlayerViewModel) new ViewModelProvider(this).get(PlayerViewModel.class));
        return L4();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i4, int i10, @m8.h Intent intent) {
        if (i4 == 101 && intent != null) {
            PkBroadcastMsg pkBroadcastMsg = (PkBroadcastMsg) this.N.fromJson(intent.getStringExtra("broadcast"), (Class<Object>) PkBroadcastMsg.class);
            if (pkBroadcastMsg != null) {
                w2(pkBroadcastMsg);
            }
        }
        super.onActivityResult(i4, i10, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        F4();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity, com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        v4();
        R5();
        getViewModelStore().clear();
        super.onDestroy();
    }

    @Override // io.github.rockerhieu.emojicon.f.d
    public void onEmojiconBackspaceClicked(@m8.g View v9) {
        Intrinsics.checkNotNullParameter(v9, "v");
        p4 p4Var = this.J;
        if (p4Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
            p4Var = null;
        }
        io.github.rockerhieu.emojicon.f.W(p4Var.f62921h);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.U2 = true;
        if (((e5.i) J()).f62518b.r()) {
            ((e5.i) J()).f62518b.pause();
        }
        if (((e5.i) J()).f62519c.r()) {
            ((e5.i) J()).f62519c.pause();
        }
        SDKManager.y(false);
        if (!isFinishing() || E5()) {
            return;
        }
        overridePendingTransition(R.anim.fragment_slide_right_in, R.anim.fragment_slide_right_out);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity, com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        boolean z9;
        super.onResume();
        if (this.U2) {
            if (this.f53657x2) {
                Boolean value = L4().d0().getValue();
                Intrinsics.checkNotNull(value);
                if (!value.booleanValue()) {
                    z9 = true;
                    N0(z9, true);
                }
            }
            z9 = false;
            N0(z9, true);
        }
        this.U2 = false;
        if (((e5.i) J()).f62518b.r() && ((e5.i) J()).f62518b.i()) {
            ((e5.i) J()).f62518b.k();
        }
        if (((e5.i) J()).f62519c.r() && ((e5.i) J()).f62519c.i()) {
            ((e5.i) J()).f62519c.k();
        }
        N4();
        SDKManager.y(true);
        this.f52469j.M();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(@m8.g Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        outState.putInt("pos", ((e5.i) J()).f62525i.getCurrentItem());
        outState.putParcelable("survivor", L1());
        super.onSaveInstanceState(outState);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.U2 = true;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void p1(@m8.g String ptid, int i4) {
        Intrinsics.checkNotNullParameter(ptid, "ptid");
        L4().X0(ptid, Integer.valueOf(i4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void p7() {
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = this.R;
        if (gVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
            gVar = null;
        }
        gVar.u(null);
    }

    @Override // com.qennnsad.aknkaksd.data.websocket.WebSocketService.b
    public void q() {
        this.F2 = true;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void q1(@m8.g final ErrorMsg msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        new AlertDialog.Builder(this).setCancelable(true).setMessage(msg.getContent()).setPositiveButton("重新编辑", new DialogInterface.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.f
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                PlayerActivity.S3(PlayerActivity.this, msg, dialogInterface, i4);
            }
        }).setNegativeButton("取消", com.qennnsad.aknkaksd.presentation.ui.room.player.player.q.f53960a).show();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void q2(@m8.g FanInfoEvent info) {
        Intrinsics.checkNotNullParameter(info, "info");
        L4().V0(info);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity
    @SuppressLint({"ClickableViewAccessibility", "CheckResult"})
    protected void r0() {
        n4 a10 = n4.a(findViewById(R.id.layout_gift));
        Intrinsics.checkNotNullExpressionValue(a10, "bind(findViewById(R.id.layout_gift))");
        this.K = a10;
        e5.f3 a11 = e5.f3.a(findViewById(R.id.player));
        Intrinsics.checkNotNullExpressionValue(a11, "bind(findViewById(R.id.player))");
        this.I = a11;
        p4 a12 = p4.a(findViewById(R.id.room_ll_chat_bar));
        Intrinsics.checkNotNullExpressionValue(a12, "bind(findViewById(R.id.room_ll_chat_bar))");
        this.J = a12;
        P4();
        e5.f3 f3Var = this.I;
        p4 p4Var = null;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        RelativeLayout relativeLayout = f3Var.f62405b.f62875b;
        Intrinsics.checkNotNullExpressionValue(relativeLayout, "playerBinding.animations.roomLiveShowAnimLayout");
        e5.f3 f3Var2 = this.I;
        if (f3Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var2 = null;
        }
        SVGAImageView sVGAImageView = f3Var2.f62413j.f62333h;
        Intrinsics.checkNotNullExpressionValue(sVGAImageView, "playerBinding.playerContainer.roomSvga");
        e5.f3 f3Var3 = this.I;
        if (f3Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var3 = null;
        }
        LinearLayout linearLayout = f3Var3.f62407d.f62969d;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "playerBinding.giftActionsContainer.roomLlGiftBar");
        this.L = new GiftAnimationUtil(relativeLayout, sVGAImageView, linearLayout, new f());
        com.qennnsad.aknkaksd.data.repository.m sourceFactory = this.T;
        Intrinsics.checkNotNullExpressionValue(sourceFactory, "sourceFactory");
        e5.f3 f3Var4 = this.I;
        if (f3Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var4 = null;
        }
        PeerageLoginView peerageLoginView = f3Var4.f62412i.f63199c;
        Intrinsics.checkNotNullExpressionValue(peerageLoginView, "playerBinding.peerageAni…iner.roomPeerageLoginInfo");
        e5.f3 f3Var5 = this.I;
        if (f3Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var5 = null;
        }
        SVGAImageView sVGAImageView2 = f3Var5.f62412i.f63200d;
        Intrinsics.checkNotNullExpressionValue(sVGAImageView2, "playerBinding.peerageAni…iner.roomSvgaPeerageLogin");
        this.M = new com.qennnsad.aknkaksd.util.animations.f(sourceFactory, peerageLoginView, sVGAImageView2, new g());
        com.qennnsad.aknkaksd.presentation.ui.room.view.a.f(this);
        getWindow().addFlags(128);
        ((e5.i) J()).f62523g.setIsEnabled(false);
        ViewCompat.setOnApplyWindowInsetsListener(((e5.i) J()).getRoot(), new OnApplyWindowInsetsListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.i
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat t52;
                t52 = PlayerActivity.t5(PlayerActivity.this, view, windowInsetsCompat);
                return t52;
            }
        });
        g5.a localDataManager = this.f52469j;
        Intrinsics.checkNotNullExpressionValue(localDataManager, "localDataManager");
        com.qennnsad.aknkaksd.data.repository.m sourceFactory2 = this.T;
        Intrinsics.checkNotNullExpressionValue(sourceFactory2, "sourceFactory");
        e5.f3 f3Var6 = this.I;
        if (f3Var6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var6 = null;
        }
        RelativeLayout root = f3Var6.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "playerBinding.root");
        this.R = new com.qennnsad.aknkaksd.presentation.ui.room.player.pk.h(localDataManager, sourceFactory2, root, true, new h());
        Animation loadAnimation = AnimationUtils.loadAnimation(this, R.anim.shake);
        Intrinsics.checkNotNullExpressionValue(loadAnimation, "loadAnimation(this, R.anim.shake)");
        this.Z2 = loadAnimation;
        Animation loadAnimation2 = AnimationUtils.loadAnimation(this, R.anim.shake);
        Intrinsics.checkNotNullExpressionValue(loadAnimation2, "loadAnimation(this, R.anim.shake)");
        this.f53646a3 = loadAnimation2;
        this.Y2 = AnimationUtils.loadAnimation(this, R.anim.shake);
        Animation[] animationArr = new Animation[3];
        Animation animation = this.Z2;
        if (animation == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shakeGameAnimation");
            animation = null;
        }
        animationArr[0] = animation;
        animationArr[1] = this.Y2;
        Animation animation2 = this.f53646a3;
        if (animation2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shakeFanClubAnimation");
            animation2 = null;
        }
        animationArr[2] = animation2;
        for (int i4 = 0; i4 < 3; i4++) {
            Animation animation3 = animationArr[i4];
            if (animation3 != null) {
                animation3.setFillAfter(true);
                animation3.setRepeatCount(-1);
                animation3.setRepeatMode(2);
            }
        }
        Animation animation4 = this.f53646a3;
        if (animation4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shakeFanClubAnimation");
            animation4 = null;
        }
        animation4.setStartOffset(com.google.android.exoplayer2.k2.f23783i1);
        m5();
        getSupportFragmentManager().beginTransaction().replace(R.id.emoji, io.github.rockerhieu.emojicon.f.Y(true)).commitNow();
        p4 p4Var2 = this.J;
        if (p4Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
            p4Var2 = null;
        }
        ImageView imageView = p4Var2.f62916c;
        Intrinsics.checkNotNullExpressionValue(imageView, "chatInputBinding.emojiBtn");
        io.reactivex.rxjava3.core.g0<Unit> b10 = com.qennnsad.aknkaksd.util.f1.b(imageView);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        b10.M6(50L, timeUnit).a6(new q7.g() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.f1
            @Override // q7.g
            public final void accept(Object obj) {
                PlayerActivity.u5(PlayerActivity.this, (Unit) obj);
            }
        });
        p4 p4Var3 = this.J;
        if (p4Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
            p4Var3 = null;
        }
        Button button = p4Var3.f62917d;
        Intrinsics.checkNotNullExpressionValue(button, "chatInputBinding.roomBtnSend");
        com.qennnsad.aknkaksd.util.f1.b(button).M6(50L, timeUnit).i2(new q7.r() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.g1
            @Override // q7.r
            public final boolean test(Object obj) {
                boolean v52;
                v52 = PlayerActivity.v5(PlayerActivity.this, (Unit) obj);
                return v52;
            }
        }).a6(new q7.g() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.e1
            @Override // q7.g
            public final void accept(Object obj) {
                PlayerActivity.w5(PlayerActivity.this, (Unit) obj);
            }
        });
        p4 p4Var4 = this.J;
        if (p4Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatInputBinding");
        } else {
            p4Var = p4Var4;
        }
        RelativeLayout relativeLayout2 = p4Var.f62918e;
        Intrinsics.checkNotNullExpressionValue(relativeLayout2, "chatInputBinding.roomDanmu");
        com.qennnsad.aknkaksd.util.f1.d(relativeLayout2, new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.d0
            @Override // java.lang.Runnable
            public final void run() {
                PlayerActivity.x5(PlayerActivity.this);
            }
        });
        l6();
        y6();
        k5();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void r1(@m8.g WsBleDeviceMsg bleMsg) {
        Intrinsics.checkNotNullParameter(bleMsg, "bleMsg");
        int cost = bleMsg.getCost();
        int duration = bleMsg.getDuration() * 1000;
        Timber.b bVar = Timber.f93860a;
        bVar.H("BleDevice").k("cost:" + cost + "---oldcost:" + this.f53656x1 + "----time:" + duration + "-WsBleDeviceMsg:" + bleMsg, new Object[0]);
        if (cost >= this.f53656x1) {
            if (duration > 1000) {
                duration -= 1000;
            }
            bVar.H("BleDevice").k("time:" + duration, new Object[0]);
            this.f53656x1 = cost;
            this.P.postDelayed(this.f53658y1, (long) duration);
            com.qennnsad.aknkaksd.util.sound.a aVar = this.Q;
            if (aVar != null) {
                aVar.c(bleMsg.getSound());
            }
        }
        this.f53649b3 = true;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void r2(@m8.g JoinPkSuccessMsg msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        I6();
        LiveSummary value = L4().n0().getValue();
        Intrinsics.checkNotNull(value);
        boolean areEqual = Intrinsics.areEqual(value.getId(), String.valueOf(msg.sender_id));
        L4().R0(areEqual, String.valueOf(areEqual ? msg.receiver_id : msg.sender_id));
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void s1(boolean z9) {
        if (z9) {
            Y5();
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void s2(int i4) {
        e5.f3 f3Var = this.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62422s.C.setText(String.valueOf(i4));
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void t1(@m8.g LiveAudienceListMsg msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Timber.f93860a.k("Audience data received: %s", msg.toString());
        L4().C0(msg);
        e5.f3 f3Var = this.I;
        e5.f3 f3Var2 = null;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62422s.f63118w.setText(String.valueOf(msg.getSeat_count()));
        e5.f3 f3Var3 = this.I;
        if (f3Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
        } else {
            f3Var2 = f3Var3;
        }
        f3Var2.f62422s.f63117v.setText(String.valueOf(msg.getTotalCount()));
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void t2(@m8.g PinnedMessageListEvent event) {
        List<PinnedMessageBean> mutableList;
        Intrinsics.checkNotNullParameter(event, "event");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) event.getMessage());
        L5(mutableList);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void u1(@m8.g PeerageLogin peerageLogin) {
        Intrinsics.checkNotNullParameter(peerageLogin, "peerageLogin");
        Timber.b bVar = Timber.f93860a;
        bVar.k("svga peerage login: mount name=" + peerageLogin.getMount_name(), new Object[0]);
        com.qennnsad.aknkaksd.util.animations.f fVar = this.M;
        if (fVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("peerageAnimationUtil");
            fVar = null;
        }
        fVar.k(peerageLogin, false);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void u2(@m8.g String type) {
        String str;
        Intrinsics.checkNotNullParameter(type, "type");
        W6();
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = null;
        switch (type.hashCode()) {
            case -1499501098:
                str = com.qennnsad.aknkaksd.data.websocket.b.f47820k0;
                type.equals(str);
                break;
            case -1480256434:
                if (type.equals(com.qennnsad.aknkaksd.data.websocket.b.f47834r0)) {
                    com.qennnsad.aknkaksd.util.toast.a.m(R.string.msg_pk_opponent_disconnected, false, 2, null);
                    break;
                }
                break;
            case 644694812:
                str = com.qennnsad.aknkaksd.data.websocket.b.f47822l0;
                type.equals(str);
                break;
            case 1544840296:
                str = com.qennnsad.aknkaksd.data.websocket.b.f47818j0;
                type.equals(str);
                break;
        }
        O4();
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar2 = this.R;
        if (gVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
        } else {
            gVar = gVar2;
        }
        PkBroadcastMsg E = gVar.E();
        boolean y02 = L4().y0();
        Intrinsics.checkNotNull(E);
        this.f52470k.d(EventSignature.APP_PK_BATTLE_END, O1(), String.valueOf(y02 ? E.getCoinsSender() : E.getCoinsReceiver()), String.valueOf(E.getInteractionTime()));
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void v1(boolean z9, @m8.g String rankstr) {
        Intrinsics.checkNotNullParameter(rankstr, "rankstr");
        e5.f3 f3Var = this.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        s4 s4Var = f3Var.f62422s;
        s4Var.f63101f.setText(rankstr);
        s4Var.f63101f.setVisibility(0);
        s4Var.f63097b.setVisibility(0);
        if (z9) {
            if (this.T2) {
                s4Var.f63100e.setText("计费价格:" + BaseBeautyApplication.Companion.b().getMoney() + "金币/分钟");
                s4Var.f63120y.setBase(SystemClock.elapsedRealtime());
                int elapsedRealtime = (int) (((SystemClock.elapsedRealtime() - s4Var.f63120y.getBase()) / ((long) 1000)) / ((long) 60));
                Chronometer chronometer = s4Var.f63120y;
                chronometer.setFormat('0' + elapsedRealtime + ":%s");
                s4Var.f63120y.start();
                this.T2 = false;
                return;
            }
            return;
        }
        s4Var.f63100e.setText("正在使用推广时间");
        s4Var.f63120y.setVisibility(8);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void v2(@m8.g String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        W6();
        MatchResult matchResult = MatchResult.Draw;
        int hashCode = type.hashCode();
        if (hashCode != -1058526720) {
            if (hashCode == 1544852384) {
                type.equals(com.qennnsad.aknkaksd.data.websocket.b.f47828o0);
            } else if (hashCode == 1545088369 && type.equals(com.qennnsad.aknkaksd.data.websocket.b.f47826n0)) {
                matchResult = MatchResult.Loss;
            }
        } else if (type.equals(com.qennnsad.aknkaksd.data.websocket.b.f47824m0)) {
            matchResult = MatchResult.Win;
        }
        Boolean value = L4().d0().getValue();
        Intrinsics.checkNotNull(value);
        if (value.booleanValue()) {
            com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = this.R;
            if (gVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
                gVar = null;
            }
            com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g.f0(gVar, matchResult, null, 2, null);
        }
        O6(false);
    }

    public void w(int i4) {
        Timber.b bVar = Timber.f93860a;
        bVar.k("Player Item changed. New position=" + i4 + ". Current Anchors List size: " + L4().O().size(), new Object[0]);
        bVar.k("Stopping all actions for previous player item", new Object[0]);
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = this.R;
        e5.f3 f3Var = null;
        if (gVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
            gVar = null;
        }
        gVar.F0();
        e6(false);
        b6();
        C2();
        N0(false, false);
        if (this.V2 != null) {
            FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
            PrivateRoomFragment privateRoomFragment = this.V2;
            Intrinsics.checkNotNull(privateRoomFragment);
            beginTransaction.remove(privateRoomFragment).commit();
            this.V2 = null;
        }
        if (this.W2 != null) {
            FragmentTransaction beginTransaction2 = getSupportFragmentManager().beginTransaction();
            RoomFinishedFragment roomFinishedFragment = this.W2;
            Intrinsics.checkNotNull(roomFinishedFragment);
            beginTransaction2.remove(roomFinishedFragment).commit();
            this.W2 = null;
        }
        com.qennnsad.aknkaksd.util.danmu.a aVar = this.O2;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mDanmuControl");
            aVar = null;
        }
        aVar.o();
        com.qennnsad.aknkaksd.util.danmu.c cVar = this.P2;
        if (cVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mLevelDanmuControl");
            cVar = null;
        }
        cVar.j();
        W6();
        com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f fVar = this.f53647b1;
        if (fVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatAdapter");
            fVar = null;
        }
        fVar.l(new ArrayList());
        this.X2 = 1;
        F6(this, false, null, 2, null);
        this.N2 = false;
        this.f53652g1.removeCallbacks(this.f53651d3);
        Y5();
        r7(0L);
        bVar.k("Notify ViewModel about new position: " + i4, new Object[0]);
        L4().F0(i4);
        O6(true);
        e5.f3 f3Var2 = this.I;
        if (f3Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
        } else {
            f3Var = f3Var2;
        }
        f3Var.f62421r.f62748c.g();
        z6();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void w1(@m8.g SystemMsg msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Timber.b bVar = Timber.f93860a;
        bVar.k("LocalRoomMsg-WsRoomAd:" + msg, new Object[0]);
        e5.f3 f3Var = this.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        s4 s4Var = f3Var.f62422s;
        s4Var.f63119x.setTextList(msg.getRollmsg_content());
        s4Var.f63104i.setVisibility(0);
        L4().j0().postValue(msg.getRoom_ad());
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void w2(@m8.g PkBroadcastMsg msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Boolean value = L4().d0().getValue();
        Intrinsics.checkNotNull(value);
        com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar = null;
        if (value.booleanValue()) {
            com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar2 = this.R;
            if (gVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
            } else {
                gVar = gVar2;
            }
            gVar.I0(msg, L4().y0());
        } else {
            com.qennnsad.aknkaksd.presentation.ui.room.player.pk.g gVar3 = this.R;
            if (gVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pkPlayerManager");
            } else {
                gVar = gVar3;
            }
            gVar.r(msg);
        }
        Boolean value2 = L4().d0().getValue();
        Intrinsics.checkNotNull(value2);
        if (!value2.booleanValue() && z5() && this.G2) {
            L4().H0(false);
        }
        y4();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void x1(@m8.g ChargeTimeRoomMsg chargeTimeRoomMsg) {
        Intrinsics.checkNotNullParameter(chargeTimeRoomMsg, "chargeTimeRoomMsg");
        e5.f3 f3Var = this.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62422s.C.setText(this.O.format(chargeTimeRoomMsg.getBeanoriginal()));
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void x2(@m8.g LocalRoomMsg localRoomMsg) {
        Intrinsics.checkNotNullParameter(localRoomMsg, "localRoomMsg");
        super.x2(localRoomMsg);
        com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.receive.a aVar = this.H2;
        if (aVar == null) {
            return;
        }
        aVar.r(L4().z0());
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void y1(int i4) {
        Timber.b bVar = Timber.f93860a;
        bVar.k("Update coine balance from socket. Coins spent: " + i4, new Object[0]);
        UserMoney s02 = L4().s0();
        if (s02 == null || s02.getCoinbalance() - i4 <= 0) {
            return;
        }
        s02.setCoinbalance(s02.getCoinbalance() - i4);
        this.f52469j.U(s02);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity
    protected void z1(int i4) {
        e5.f3 f3Var = this.I;
        if (f3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerBinding");
            f3Var = null;
        }
        f3Var.f62422s.f63100e.setText("正在使用推广时间");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlayerActivity.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "s", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class u extends Lambda implements Function1<String, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ UserInfo f53682b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        u(UserInfo userInfo) {
            super(1);
            this.f53682b = userInfo;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.h String str) {
            ((BaseStreamActivity) PlayerActivity.this).f52480u.H(PlayerActivity.this.L4().u0().o("Manage", this.f53682b.getId(), this.f53682b.getNickname(), str));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }
    }
}
