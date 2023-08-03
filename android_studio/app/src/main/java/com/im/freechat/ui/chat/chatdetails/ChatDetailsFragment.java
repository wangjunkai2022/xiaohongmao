package com.im.freechat.ui.chat.chatdetails;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.IntRange;
import androidx.appcompat.R;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.content.FileProvider;
import androidx.core.graphics.Insets;
import androidx.core.os.BundleKt;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.core.models.Image;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.ui.GPHContentType;
import com.giphy.sdk.ui.GPHSettings;
import com.giphy.sdk.ui.themes.GPHTheme;
import com.giphy.sdk.ui.themes.GridType;
import com.giphy.sdk.ui.views.GiphyDialogFragment;
import com.google.android.exoplayer2.ui.PlayerView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.contact.ContactType;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.AudioAttachment;
import com.im.freechat.shared.entities.message.ChosenAttachment;
import com.im.freechat.shared.entities.message.FileAttachment;
import com.im.freechat.shared.entities.message.GifAttachment;
import com.im.freechat.shared.entities.message.ImageAttachment;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.shared.entities.message.MessageStyle;
import com.im.freechat.shared.entities.message.VideoAttachment;
import com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment;
import com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel;
import com.im.freechat.ui.chat.holder.BaseChatHolder;
import com.im.freechat.ui.chat.message_gallery.a;
import com.im.freechat.ui.contacts.ContactListFragment;
import com.im.freechat.ui.widget.ChatDetailsAudioPlayLayout;
import com.im.freechat.ui.widget.ChatDetailsAudioRecordLayout;
import com.im.freechat.utils.CameraRecorder;
import com.im.freechat.utils.MessageEditText;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.tangxiaolv.telegramgallery.j;
import com.tangxiaolv.telegramgallery.p;
import iamutkarshtiwari.github.io.ananas.editimage.EditImageActivity;
import io.github.rockerhieu.emojicon.c;
import io.github.rockerhieu.emojicon.emoji.Emojicon;
import io.github.rockerhieu.emojicon.f;
import io.sentry.protocol.a;
import io.sentry.protocol.i;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: ChatDetailsFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000Ò\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b*\u0002µ\u0001\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u00052\u00020\u0006:\u0005ë\u0001ì\u0001wB\t¢\u0006\u0006\bé\u0001\u0010ê\u0001J\u0012\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002J\u0016\u0010\r\u001a\u00020\t2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u000bH\u0002J\b\u0010\u000e\u001a\u00020\tH\u0002J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0012\u001a\u00020\tH\u0002J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0010\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0010\u0010 \u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u001cH\u0002J\u0019\u0010\"\u001a\u00020\t2\b\u0010!\u001a\u0004\u0018\u00010\u0019H\u0002¢\u0006\u0004\b\"\u0010#J\b\u0010$\u001a\u00020\tH\u0002J\u0016\u0010&\u001a\u00020\t2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00190\u000bH\u0002J\u0010\u0010)\u001a\u00020\t2\u0006\u0010(\u001a\u00020'H\u0002J\b\u0010*\u001a\u00020\tH\u0002J\b\u0010+\u001a\u00020\u000fH\u0002J\b\u0010,\u001a\u00020\u000fH\u0002J\u0016\u0010-\u001a\u00020\t2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020'0\u000bH\u0002J\u0010\u00100\u001a\u00020\t2\u0006\u0010/\u001a\u00020.H\u0002J\b\u00101\u001a\u00020\tH\u0003J\f\u00103\u001a\u00020\t*\u000202H\u0002J\b\u00104\u001a\u00020\tH\u0002J\b\u00105\u001a\u00020\tH\u0002J\b\u00106\u001a\u00020\tH\u0002J\b\u00107\u001a\u00020\tH\u0002J\u001c\u0010:\u001a\u00020\t2\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u000f08H\u0002J\u001a\u0010=\u001a\u00020\t2\u0006\u0010;\u001a\u00020\u00072\b\u0010<\u001a\u0004\u0018\u00010\u0007H\u0002J\b\u0010>\u001a\u00020\tH\u0002J\b\u0010?\u001a\u00020\tH\u0002J\u0012\u0010B\u001a\u00020\t2\b\u0010A\u001a\u0004\u0018\u00010@H\u0002J\u0012\u0010D\u001a\u00020\t2\b\u0010C\u001a\u0004\u0018\u00010\u001cH\u0002J\u0010\u0010G\u001a\u00020\t2\u0006\u0010F\u001a\u00020EH\u0002J\u0010\u0010J\u001a\u00020\t2\u0006\u0010I\u001a\u00020HH\u0002J\b\u0010K\u001a\u00020\tH\u0002J\b\u0010L\u001a\u00020\tH\u0002J\u0018\u0010O\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u001c2\u0006\u0010N\u001a\u00020MH\u0002J\u0010\u0010P\u001a\u00020\t2\u0006\u0010!\u001a\u00020\u0019H\u0002J\u0012\u0010R\u001a\u00020\t2\b\b\u0001\u0010Q\u001a\u00020MH\u0002J\b\u0010S\u001a\u00020\tH\u0002J\b\u0010T\u001a\u00020\tH\u0002J\u001a\u0010Y\u001a\u00020\u00032\u0006\u0010V\u001a\u00020U2\b\u0010X\u001a\u0004\u0018\u00010WH\u0016J\u0010\u0010\\\u001a\u00020\t2\u0006\u0010[\u001a\u00020ZH\u0016J\u0010\u0010_\u001a\u00020\t2\b\u0010^\u001a\u0004\u0018\u00010]J\u0018\u0010b\u001a\u00020\t2\u0006\u0010Q\u001a\u00020\u00022\u0006\u0010a\u001a\u00020`H\u0016J\b\u0010c\u001a\u00020\tH\u0016J\b\u0010d\u001a\u00020\tH\u0016J\b\u0010e\u001a\u00020\tH\u0014J\u0018\u0010i\u001a\u00020\t2\u0006\u0010g\u001a\u00020f2\u0006\u0010V\u001a\u00020hH\u0016J\u0010\u0010l\u001a\u00020\u000f2\u0006\u0010k\u001a\u00020jH\u0016J\u0012\u0010n\u001a\u00020\t2\b\u0010m\u001a\u0004\u0018\u000102H\u0016J\u0012\u0010q\u001a\u00020\t2\b\u0010p\u001a\u0004\u0018\u00010oH\u0016J\u000e\u0010t\u001a\u00020\t2\u0006\u0010s\u001a\u00020rJ\u0006\u0010u\u001a\u00020\tJ\b\u0010v\u001a\u00020\tH\u0016R\u0016\u0010x\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010eR\u001b\u0010~\u001a\u00020y8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bz\u0010{\u001a\u0004\b|\u0010}R\u001e\u0010\u0082\u0001\u001a\u00020M8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0004\b\u007f\u0010{\u001a\u0006\b\u0080\u0001\u0010\u0081\u0001R \u0010\u0087\u0001\u001a\u00030\u0083\u00018VX\u0096\u0084\u0002¢\u0006\u000f\n\u0005\b\u0084\u0001\u0010{\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001R\u001f\u0010\u008a\u0001\u001a\u00020M8BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0088\u0001\u0010{\u001a\u0006\b\u0089\u0001\u0010\u0081\u0001R \u0010\u008f\u0001\u001a\u00030\u008b\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u008c\u0001\u0010{\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001R \u0010\u0094\u0001\u001a\u00030\u0090\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0091\u0001\u0010{\u001a\u0006\b\u0092\u0001\u0010\u0093\u0001R0\u0010\u009a\u0001\u001a\u0014\u0012\u000f\u0012\r \u0097\u0001*\u0005\u0018\u00010\u0096\u00010\u0096\u00010\u0095\u00018BX\u0082\u0084\u0002¢\u0006\u000e\n\u0004\bq\u0010{\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001R\u0019\u0010\u009d\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u009c\u0001R\u0019\u0010\u009f\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009c\u0001R\u001f\u0010£\u0001\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b \u0001\u0010{\u001a\u0006\b¡\u0001\u0010¢\u0001R\u001f\u0010§\u0001\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b¤\u0001\u0010{\u001a\u0006\b¥\u0001\u0010¦\u0001R \u0010¬\u0001\u001a\u00030¨\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b©\u0001\u0010{\u001a\u0006\bª\u0001\u0010«\u0001R\u0018\u0010®\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u00ad\u0001\u0010eR*\u0010´\u0001\u001a\u00020r2\u0007\u0010¯\u0001\u001a\u00020r8\u0002@BX\u0082\u000e¢\u0006\u0010\n\u0006\b°\u0001\u0010±\u0001\"\u0006\b²\u0001\u0010³\u0001R\u0018\u0010¸\u0001\u001a\u00030µ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¶\u0001\u0010·\u0001R\u001b\u0010»\u0001\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0001\u0010º\u0001R\u001b\u0010¾\u0001\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010½\u0001R5\u0010Ã\u0001\u001a \u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020\u0007 \u0097\u0001*\u000b\u0012\u0004\u0012\u00020\u0007\u0018\u00010À\u00010À\u00010¿\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÁ\u0001\u0010Â\u0001R)\u0010Æ\u0001\u001a\u0014\u0012\u000f\u0012\r \u0097\u0001*\u0005\u0018\u00010Ä\u00010Ä\u00010¿\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÅ\u0001\u0010Â\u0001R&\u0010Ç\u0001\u001a\u0012\u0012\r\u0012\u000b \u0097\u0001*\u0004\u0018\u00010\u00070\u00070¿\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bm\u0010Â\u0001R)\u0010É\u0001\u001a\u0014\u0012\u000f\u0012\r \u0097\u0001*\u0005\u0018\u00010Ä\u00010Ä\u00010¿\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÈ\u0001\u0010Â\u0001R&\u0010Ê\u0001\u001a\u0012\u0012\r\u0012\u000b \u0097\u0001*\u0004\u0018\u00010\u00160\u00160¿\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\\\u0010Â\u0001R)\u0010Ì\u0001\u001a\u0014\u0012\u000f\u0012\r \u0097\u0001*\u0005\u0018\u00010Ä\u00010Ä\u00010¿\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bË\u0001\u0010Â\u0001R\u0018\u0010Î\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bÍ\u0001\u0010eR\u001a\u0010Ò\u0001\u001a\u00030Ï\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÐ\u0001\u0010Ñ\u0001R)\u0010Ô\u0001\u001a\u0014\u0012\u000f\u0012\r \u0097\u0001*\u0005\u0018\u00010Ä\u00010Ä\u00010¿\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÓ\u0001\u0010Â\u0001R$\u0010Ø\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u000b0Õ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÖ\u0001\u0010×\u0001R(\u0010Ý\u0001\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bÙ\u0001\u0010e\u001a\u0006\bÚ\u0001\u0010¦\u0001\"\u0006\bÛ\u0001\u0010Ü\u0001R\u0019\u0010à\u0001\u001a\u00020M8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÞ\u0001\u0010ß\u0001R\u0018\u0010ä\u0001\u001a\u00030á\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\bâ\u0001\u0010ã\u0001R\u0018\u0010è\u0001\u001a\u00030å\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\bæ\u0001\u0010ç\u0001¨\u0006í\u0001"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;", "Lcom/im/freechat/base/f;", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;", "Lf4/i;", "Lcom/im/freechat/ui/contacts/e;", "Lio/github/rockerhieu/emojicon/f$d;", "Lio/github/rockerhieu/emojicon/c$a;", "", "part", "", "W3", "", a.b.f83633h, "u3", "I3", "", "singlePhoto", "D3", "C3", "Lcom/im/freechat/shared/entities/message/ChosenAttachment;", "chosenAttachment", "N3", "Landroid/net/Uri;", "uri", "t3", "", "mediaId", "y3", "Lcom/im/freechat/shared/entities/message/Message;", "edit", "X3", "it", "K3", "messageId", "Y1", "(Ljava/lang/Long;)V", "U1", "messageIds", "Z1", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "messageWrapper", "F3", "Z3", "s3", "X1", "d4", "Lcom/im/freechat/shared/entities/message/Attachment;", "message", "w3", "F2", "Landroid/view/View;", "R1", "a3", "T2", "V3", "r3", "", "messages", "h4", "path", com.ksyun.media.player.misc.c.f45557a, "x3", "l3", "v3", "Lcom/im/freechat/ui/chat/chatdetails/z1;", "extraMessageInfo", "V1", "pinnedMessage", "W1", "Lcom/im/freechat/shared/entities/chat/Chat;", "chat", "c4", "Landroidx/fragment/app/Fragment;", i.b.f83726i, "R3", "n2", "j4", "", "searchResultsCount", "q2", "p2", "direction", "q3", "M3", "m3", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "J3", "Lcom/im/freechat/shared/entities/contact/UserModel;", "contact", y.b.f83919g, "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;", com.alipay.sdk.packet.d.f6907q, "L3", "Landroid/os/Bundle;", "extras", "p3", "onResume", "onPause", "Z", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "Landroid/view/MenuItem;", "item", "onOptionsItemSelected", "v", "onEmojiconBackspaceClicked", "Lio/github/rockerhieu/emojicon/emoji/Emojicon;", "emojicon", ContextChain.TAG_INFRA, "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;", "bottomVisibilityState", "U3", "o3", "onStop", "b", "stickedToBottom", "Lcom/im/freechat/utils/CameraRecorder;", "c", "Lkotlin/Lazy;", "c2", "()Lcom/im/freechat/utils/CameraRecorder;", "cameraRecorder", "d", "f2", "()I", "distance", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;", "e", "m2", "()Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;", "viewModel", "f", "d2", k4.b.f84734a, "Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;", "g", "a2", "()Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;", "adapter", "Lcom/im/freechat/ui/contacts/ContactListFragment;", "h", "e2", "()Lcom/im/freechat/ui/contacts/ContactListFragment;", "contactsFragment", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "Landroid/widget/FrameLayout;", "kotlin.jvm.PlatformType", "i2", "()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "mentionBehavior", "j", "J", "searchedGlobalMessageId", "k", "highlightedMessageId", "l", "l2", "()J", k4.b.f84740g, "m", "j2", "()Z", "minimisedContainer", "Ll4/e;", "n", "b2", "()Ll4/e;", "attachmentFragment", "o", "initialFocusProcessed", "value", "p", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;", "P3", "(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;)V", "currentBottomVisibilityState", "com/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$h0", "q", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$h0;", "recordAudioCallback", "r", "Landroid/net/Uri;", "cameraCaptureUri", "s", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;", "lastPermissionAction", "Landroidx/activity/result/ActivityResultLauncher;", "", "t", "Landroidx/activity/result/ActivityResultLauncher;", "requestPermissions", "Landroid/content/Intent;", "u", "openSettings", "pickFile", "w", "pickMedia", "takeImageFromCamera", y.b.f83920h, "imageEditor", "z", "cancelRecord", "", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "F", "downX", "B", "openGallery", "Landroidx/lifecycle/Observer;", "C", "Landroidx/lifecycle/Observer;", "searchMessageObserver", "D", "k2", "Q3", "(Z)V", "recording", ExifInterface.LONGITUDE_EAST, "I", "currentSearchIndex", "Lio/github/rockerhieu/emojicon/f;", "g2", "()Lio/github/rockerhieu/emojicon/f;", "emojiFragment", "Lcom/giphy/sdk/ui/views/GiphyDialogFragment;", "h2", "()Lcom/giphy/sdk/ui/views/GiphyDialogFragment;", "giphyFragment", "<init>", "()V", "BottomVisibilityState", "a", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChatDetailsFragment extends com.im.freechat.base.f<ChatDetailsViewModel.Directions, f4.i> implements com.im.freechat.ui.contacts.e, f.d, c.a {
    private float A;
    @m8.g
    private final ActivityResultLauncher<Intent> B;
    @m8.g
    private final Observer<List<Message>> C;
    private boolean D;
    private int E;

    /* renamed from: b  reason: collision with root package name */
    private boolean f42295b = true;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f42296c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Lazy f42297d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Lazy f42298e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Lazy f42299f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final Lazy f42300g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final Lazy f42301h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final Lazy f42302i;

    /* renamed from: j  reason: collision with root package name */
    private long f42303j;

    /* renamed from: k  reason: collision with root package name */
    private long f42304k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final Lazy f42305l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final Lazy f42306m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final Lazy f42307n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f42308o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private BottomVisibilityState f42309p;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private final h0 f42310q;
    @m8.h

    /* renamed from: r  reason: collision with root package name */
    private Uri f42311r;
    @m8.h

    /* renamed from: s  reason: collision with root package name */
    private a f42312s;
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    private final ActivityResultLauncher<String[]> f42313t;
    @m8.g

    /* renamed from: u  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f42314u;
    @m8.g

    /* renamed from: v  reason: collision with root package name */
    private final ActivityResultLauncher<String> f42315v;
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f42316w;
    @m8.g

    /* renamed from: x  reason: collision with root package name */
    private final ActivityResultLauncher<Uri> f42317x;
    @m8.g

    /* renamed from: y  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f42318y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f42319z;

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$BottomVisibilityState;", "", "(Ljava/lang/String;I)V", "NONE", "KEYBOARD_REQUEST", "KEYBOARD_SHOWING", "ATTACHMENT", "EMOJI", "STICKERS", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum BottomVisibilityState {
        NONE,
        KEYBOARD_REQUEST,
        KEYBOARD_SHOWING,
        ATTACHMENT,
        EMOJI,
        STICKERS
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0007\u0004\n\u000b\f\r\u000e\u000fB\u0017\b\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\b\u0010\tR\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0004\u0010\u0006\u0082\u0001\u0007\u0010\u0011\u0012\u0013\u0014\u0015\u0016¨\u0006\u0017"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;", "", "", "", "a", "Ljava/util/List;", "()Ljava/util/List;", a.b.f83633h, "<init>", "(Ljava/util/List;)V", "b", "c", "d", "e", "f", "g", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$a;", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$b;", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$c;", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$d;", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$e;", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$f;", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$g;", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static abstract class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f42330a;

        /* compiled from: ChatDetailsFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$a;", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
        /* renamed from: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0346a extends a {
            @m8.g

            /* renamed from: b  reason: collision with root package name */
            public static final C0346a f42331b = new C0346a();

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            private C0346a() {
                /*
                    r2 = this;
                    java.lang.String r0 = "android.permission.READ_EXTERNAL_STORAGE"
                    java.util.List r0 = kotlin.collections.CollectionsKt.listOf(r0)
                    r1 = 0
                    r2.<init>(r0, r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.a.C0346a.<init>():void");
            }
        }

        /* compiled from: ChatDetailsFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$b;", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class b extends a {
            @m8.g

            /* renamed from: b  reason: collision with root package name */
            public static final b f42332b = new b();

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            private b() {
                /*
                    r2 = this;
                    java.lang.String r0 = "android.permission.READ_EXTERNAL_STORAGE"
                    java.util.List r0 = kotlin.collections.CollectionsKt.listOf(r0)
                    r1 = 0
                    r2.<init>(r0, r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.a.b.<init>():void");
            }
        }

        /* compiled from: ChatDetailsFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$c;", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class c extends a {
            @m8.g

            /* renamed from: b  reason: collision with root package name */
            public static final c f42333b = new c();

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            private c() {
                /*
                    r2 = this;
                    java.lang.String r0 = "android.permission.READ_EXTERNAL_STORAGE"
                    java.util.List r0 = kotlin.collections.CollectionsKt.listOf(r0)
                    r1 = 0
                    r2.<init>(r0, r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.a.c.<init>():void");
            }
        }

        /* compiled from: ChatDetailsFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$d;", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class d extends a {
            @m8.g

            /* renamed from: b  reason: collision with root package name */
            public static final d f42334b = new d();

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            private d() {
                /*
                    r2 = this;
                    java.lang.String r0 = "android.permission.CAMERA"
                    java.util.List r0 = kotlin.collections.CollectionsKt.listOf(r0)
                    r1 = 0
                    r2.<init>(r0, r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.a.d.<init>():void");
            }
        }

        /* compiled from: ChatDetailsFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005¨\u0006\t"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$e;", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;", "Lcom/im/freechat/shared/entities/message/VideoAttachment;", "b", "Lcom/im/freechat/shared/entities/message/VideoAttachment;", "()Lcom/im/freechat/shared/entities/message/VideoAttachment;", "attachment", "<init>", "(Lcom/im/freechat/shared/entities/message/VideoAttachment;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class e extends a {
            @m8.g

            /* renamed from: b  reason: collision with root package name */
            private final VideoAttachment f42335b;

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public e(@m8.g com.im.freechat.shared.entities.message.VideoAttachment r3) {
                /*
                    r2 = this;
                    java.lang.String r0 = "attachment"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                    java.lang.String r0 = "android.permission.READ_EXTERNAL_STORAGE"
                    java.util.List r0 = kotlin.collections.CollectionsKt.listOf(r0)
                    r1 = 0
                    r2.<init>(r0, r1)
                    r2.f42335b = r3
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.a.e.<init>(com.im.freechat.shared.entities.message.VideoAttachment):void");
            }

            @m8.g
            public final VideoAttachment b() {
                return this.f42335b;
            }
        }

        /* compiled from: ChatDetailsFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$f;", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class f extends a {
            @m8.g

            /* renamed from: b  reason: collision with root package name */
            public static final f f42336b = new f();

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            private f() {
                /*
                    r2 = this;
                    java.lang.String r0 = "android.permission.RECORD_AUDIO"
                    java.util.List r0 = kotlin.collections.CollectionsKt.listOf(r0)
                    r1 = 0
                    r2.<init>(r0, r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.a.f.<init>():void");
            }
        }

        /* compiled from: ChatDetailsFragment.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$g;", "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class g extends a {
            @m8.g

            /* renamed from: b  reason: collision with root package name */
            public static final g f42337b = new g();

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            private g() {
                /*
                    r3 = this;
                    java.lang.String r0 = "android.permission.READ_EXTERNAL_STORAGE"
                    java.lang.String r1 = "android.permission.CAMERA"
                    java.lang.String r2 = "android.permission.RECORD_AUDIO"
                    java.lang.String[] r0 = new java.lang.String[]{r0, r1, r2}
                    java.util.List r0 = kotlin.collections.CollectionsKt.listOf(r0)
                    r1 = 0
                    r3.<init>(r0, r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.a.g.<init>():void");
            }
        }

        private a(List<String> list) {
            this.f42330a = list;
        }

        public /* synthetic */ a(List list, DefaultConstructorMarker defaultConstructorMarker) {
            this(list);
        }

        @m8.g
        public final List<String> a() {
            return this.f42330a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroid/net/Uri;", "it", "", "a", "(Landroid/net/Uri;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a0 extends Lambda implements Function1<Uri, Unit> {
        a0() {
            super(1);
        }

        public final void a(@m8.g Uri it) {
            Intrinsics.checkNotNullParameter(it, "it");
            ChatDetailsFragment.this.Y().y1(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Uri uri) {
            a(uri);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0005H\u0016¨\u0006\r"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$b;", "Landroidx/core/view/WindowInsetsAnimationCompat$Callback;", "Landroidx/core/view/WindowInsetsCompat;", "insets", "", "Landroidx/core/view/WindowInsetsAnimationCompat;", "runningAnimations", "onProgress", "animation", "", "onEnd", "<init>", "(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class b extends WindowInsetsAnimationCompat.Callback {
        public b() {
            super(0);
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
        public void onEnd(@m8.g WindowInsetsAnimationCompat animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
            ChatDetailsFragment.y1(ChatDetailsFragment.this).getRoot().setPadding(0, 0, 0, 0);
            if (ChatDetailsFragment.this.f42309p == BottomVisibilityState.KEYBOARD_REQUEST) {
                ChatDetailsFragment.this.U3(BottomVisibilityState.KEYBOARD_SHOWING);
            }
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
        @m8.g
        public WindowInsetsCompat onProgress(@m8.g WindowInsetsCompat insets, @m8.g List<WindowInsetsAnimationCompat> runningAnimations) {
            Intrinsics.checkNotNullParameter(insets, "insets");
            Intrinsics.checkNotNullParameter(runningAnimations, "runningAnimations");
            FrameLayout frameLayout = ChatDetailsFragment.y1(ChatDetailsFragment.this).f65561o;
            Intrinsics.checkNotNullExpressionValue(frameLayout, "binding.flEmojiAndMore");
            if (!(frameLayout.getVisibility() == 0) && !ChatDetailsFragment.this.j2()) {
                Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.ime());
                Intrinsics.checkNotNullExpressionValue(insets2, "insets.getInsets(WindowInsetsCompat.Type.ime())");
                Insets insets3 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
                Intrinsics.checkNotNullExpressionValue(insets3, "insets.getInsets(WindowI…Compat.Type.systemBars())");
                Insets max = Insets.max(Insets.subtract(insets2, insets3), Insets.NONE);
                Intrinsics.checkNotNullExpressionValue(max, "subtract(typesInset, oth…nsets.NONE)\n            }");
                ChatDetailsFragment.y1(ChatDetailsFragment.this).getRoot().setPadding(0, 0, 0, max.bottom - max.top);
            }
            return insets;
        }
    }

    /* compiled from: TextView.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J*\u0010\f\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0016J*\u0010\u000e\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016¨\u0006\u000f¸\u0006\u0000"}, d2 = {"androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1", "Landroid/text/TextWatcher;", "Landroid/text/Editable;", "s", "", "afterTextChanged", "", "text", "", com.google.android.exoplayer2.text.ttml.d.f25725o0, "count", com.google.android.exoplayer2.text.ttml.d.f25712d0, "beforeTextChanged", com.google.android.exoplayer2.text.ttml.d.f25711c0, "onTextChanged", "core-ktx_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b0 implements TextWatcher {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ f4.v1 f42341b;

        public b0(f4.v1 v1Var) {
            this.f42341b = v1Var;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@m8.h Editable editable) {
            if (Intrinsics.areEqual(ChatDetailsFragment.this.Y().N0().getValue(), String.valueOf(editable))) {
                return;
            }
            ChatDetailsFragment.this.Y().C1(this.f42341b.f65816l.getSelectionEnd());
            ChatDetailsFragment.this.Y().N0().setValue(String.valueOf(editable));
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;
        public static final /* synthetic */ int[] $EnumSwitchMapping$4;

        static {
            int[] iArr = new int[ChatDetailsViewModel.Directions.values().length];
            iArr[ChatDetailsViewModel.Directions.OPEN_FULLSCREEN.ordinal()] = 1;
            iArr[ChatDetailsViewModel.Directions.BACK.ordinal()] = 2;
            iArr[ChatDetailsViewModel.Directions.OPEN_FILE.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[CameraRecorder.State.values().length];
            iArr2[CameraRecorder.State.CLEAR.ordinal()] = 1;
            iArr2[CameraRecorder.State.PREPEARING.ordinal()] = 2;
            iArr2[CameraRecorder.State.PREVIEW.ordinal()] = 3;
            iArr2[CameraRecorder.State.RECORDING.ordinal()] = 4;
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[Chat.Type.values().length];
            iArr3[Chat.Type.SINGLE.ordinal()] = 1;
            iArr3[Chat.Type.GROUP.ordinal()] = 2;
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[Message.ExtraMessageType.values().length];
            iArr4[Message.ExtraMessageType.QUOTE.ordinal()] = 1;
            iArr4[Message.ExtraMessageType.FORWARD.ordinal()] = 2;
            iArr4[Message.ExtraMessageType.EDIT.ordinal()] = 3;
            $EnumSwitchMapping$3 = iArr4;
            int[] iArr5 = new int[BottomVisibilityState.values().length];
            iArr5[BottomVisibilityState.KEYBOARD_REQUEST.ordinal()] = 1;
            iArr5[BottomVisibilityState.KEYBOARD_SHOWING.ordinal()] = 2;
            iArr5[BottomVisibilityState.ATTACHMENT.ordinal()] = 3;
            iArr5[BottomVisibilityState.EMOJI.ordinal()] = 4;
            iArr5[BottomVisibilityState.STICKERS.ordinal()] = 5;
            iArr5[BottomVisibilityState.NONE.ordinal()] = 6;
            $EnumSwitchMapping$4 = iArr5;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "checked", "", "a", "(Z)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c0 extends Lambda implements Function1<Boolean, Unit> {
        c0() {
            super(1);
        }

        /* JADX WARN: Code restructure failed: missing block: B:6:0x0018, code lost:
            r0 = kotlin.collections.CollectionsKt___CollectionsKt.toList(r0);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void a(boolean r9) {
            /*
                r8 = this;
                com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment r0 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.this
                com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r0 = r0.Y()
                androidx.lifecycle.MutableLiveData r0 = r0.I0()
                java.lang.Object r0 = r0.getValue()
                java.util.Map r0 = (java.util.Map) r0
                if (r0 == 0) goto Lc8
                java.util.Set r0 = r0.keySet()
                if (r0 == 0) goto Lc8
                java.util.List r0 = kotlin.collections.CollectionsKt.toList(r0)
                if (r0 == 0) goto Lc8
                com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment r1 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.this
                com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r2 = r1.Y()
                androidx.lifecycle.LiveData r2 = r2.x0()
                java.lang.Object r2 = r2.getValue()
                java.util.List r2 = (java.util.List) r2
                if (r2 == 0) goto La4
                java.util.ArrayList r3 = new java.util.ArrayList
                r3.<init>()
                java.util.Iterator r2 = r2.iterator()
            L39:
                boolean r4 = r2.hasNext()
                if (r4 == 0) goto L5c
                java.lang.Object r4 = r2.next()
                r5 = r4
                com.im.freechat.ui.chat.chatdetails.messagelist.d r5 = (com.im.freechat.ui.chat.chatdetails.messagelist.d) r5
                com.im.freechat.shared.entities.message.Message r5 = r5.i()
                long r5 = r5.getMessageId()
                java.lang.Long r5 = java.lang.Long.valueOf(r5)
                boolean r5 = r0.contains(r5)
                if (r5 == 0) goto L39
                r3.add(r4)
                goto L39
            L5c:
                java.util.ArrayList r2 = new java.util.ArrayList
                r2.<init>()
                java.util.Iterator r3 = r3.iterator()
            L65:
                boolean r4 = r3.hasNext()
                if (r4 == 0) goto La8
                java.lang.Object r4 = r3.next()
                com.im.freechat.ui.chat.chatdetails.messagelist.d r4 = (com.im.freechat.ui.chat.chatdetails.messagelist.d) r4
                com.im.freechat.shared.entities.message.Message r4 = r4.i()
                java.util.List r4 = r4.getAttachments()
                java.util.ArrayList r5 = new java.util.ArrayList
                r6 = 10
                int r6 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r4, r6)
                r5.<init>(r6)
                java.util.Iterator r4 = r4.iterator()
            L88:
                boolean r6 = r4.hasNext()
                if (r6 == 0) goto La0
                java.lang.Object r6 = r4.next()
                com.im.freechat.shared.entities.message.Attachment r6 = (com.im.freechat.shared.entities.message.Attachment) r6
                long r6 = r6.getMediaId()
                java.lang.Long r6 = java.lang.Long.valueOf(r6)
                r5.add(r6)
                goto L88
            La0:
                kotlin.collections.CollectionsKt.addAll(r2, r5)
                goto L65
            La4:
                java.util.List r2 = kotlin.collections.CollectionsKt.emptyList()
            La8:
                if (r9 == 0) goto Lb6
                com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r9 = r1.Y()
                java.util.List r0 = kotlin.collections.CollectionsKt.plus(r0, r2)
                r9.l0(r0)
                goto Lc1
            Lb6:
                com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r9 = r1.Y()
                java.util.List r0 = kotlin.collections.CollectionsKt.plus(r0, r2)
                r9.m0(r0)
            Lc1:
                com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r9 = r1.Y()
                r9.m1()
            Lc8:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.c0.a(boolean):void");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
            a(bool.booleanValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Ll4/e;", "a", "()Ll4/e;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class d extends Lambda implements Function0<l4.e> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f42343a = new d();

        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final l4.e invoke() {
            return l4.e.f86873b.a();
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\b"}, d2 = {"com/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$d0", "Landroidx/appcompat/widget/SearchView$OnQueryTextListener;", "", s2.d.f93273b, "", "onQueryTextSubmit", "newText", "onQueryTextChange", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d0 implements SearchView.OnQueryTextListener {
        d0() {
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x000f  */
        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean onQueryTextChange(@m8.h java.lang.String r3) {
            /*
                r2 = this;
                r0 = 0
                if (r3 == 0) goto Lc
                boolean r3 = kotlin.text.StringsKt.isBlank(r3)
                if (r3 == 0) goto La
                goto Lc
            La:
                r3 = 0
                goto Ld
            Lc:
                r3 = 1
            Ld:
                if (r3 == 0) goto L1d
                com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment r3 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.this
                com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r3 = r3.Y()
                androidx.lifecycle.MutableLiveData r3 = r3.H0()
                r1 = 0
                r3.setValue(r1)
            L1d:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.d0.onQueryTextChange(java.lang.String):boolean");
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x000f  */
        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean onQueryTextSubmit(@m8.h java.lang.String r3) {
            /*
                r2 = this;
                r0 = 0
                if (r3 == 0) goto Lc
                boolean r1 = kotlin.text.StringsKt.isBlank(r3)
                if (r1 == 0) goto La
                goto Lc
            La:
                r1 = 0
                goto Ld
            Lc:
                r1 = 1
            Ld:
                if (r1 != 0) goto L1c
                com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment r1 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.this
                com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r1 = r1.Y()
                androidx.lifecycle.MutableLiveData r1 = r1.H0()
                r1.setValue(r3)
            L1c:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.d0.onQueryTextSubmit(java.lang.String):boolean");
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/im/freechat/utils/CameraRecorder;", "a", "()Lcom/im/freechat/utils/CameraRecorder;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class e extends Lambda implements Function0<CameraRecorder> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final CameraRecorder invoke() {
            Context requireContext = ChatDetailsFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            return new CameraRecorder(requireContext);
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u0010\u0012\f\u0012\n \u0002*\u0004\u0018\u00010\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "Landroid/widget/FrameLayout;", "kotlin.jvm.PlatformType", "a", "()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class e0 extends Lambda implements Function0<BottomSheetBehavior<FrameLayout>> {
        e0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final BottomSheetBehavior<FrameLayout> invoke() {
            return BottomSheetBehavior.from(ChatDetailsFragment.y1(ChatDetailsFragment.this).f65568v);
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
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
            return Integer.valueOf(ChatDetailsFragment.this.requireArguments().getInt(k4.b.f84734a));
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class f0 extends Lambda implements Function0<Boolean> {
        f0() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Boolean invoke() {
            return Boolean.valueOf(ChatDetailsFragment.this.l2() != 0);
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/im/freechat/ui/contacts/ContactListFragment;", "a", "()Lcom/im/freechat/ui/contacts/ContactListFragment;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class g extends Lambda implements Function0<ContactListFragment> {

        /* renamed from: a  reason: collision with root package name */
        public static final g f42349a = new g();

        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final ContactListFragment invoke() {
            return ContactListFragment.f43349i.a(ContactType.FOLLOW, false, false, true, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class g0 extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List<String> f42351b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g0(List<String> list) {
            super(0);
            this.f42351b = list;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ActivityResultLauncher activityResultLauncher = ChatDetailsFragment.this.f42313t;
            Object[] array = this.f42351b.toArray(new String[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            activityResultLauncher.launch(array);
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Integer;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class h extends Lambda implements Function0<Integer> {

        /* renamed from: a  reason: collision with root package name */
        public static final h f42352a = new h();

        h() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Integer invoke() {
            return Integer.valueOf(com.im.freechat.extend.s.a(50));
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$h0", "Lc4/a;", "", com.google.android.exoplayer2.text.ttml.d.f25725o0, "stop", "a", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class h0 implements c4.a {
        h0() {
        }

        @Override // c4.a
        public void a() {
            ChatDetailsFragment.this.Y().h0();
        }

        @Override // c4.a
        public void start() {
            ChatDetailsFragment.this.L3(a.f.f42336b);
        }

        @Override // c4.a
        public void stop() {
            ChatDetailsFragment.this.Y().H1();
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\b"}, d2 = {"com/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$i", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "newState", "", "onScrollStateChanged", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class i extends RecyclerView.OnScrollListener {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f42355b;

        i(int i4) {
            this.f42355b = i4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@m8.g RecyclerView recyclerView, int i4) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i4);
            if (i4 == 0) {
                ChatDetailsFragment.y1(ChatDetailsFragment.this).f65557k.removeOnScrollListener(this);
                RecyclerView.ViewHolder findViewHolderForAdapterPosition = ChatDetailsFragment.y1(ChatDetailsFragment.this).f65557k.findViewHolderForAdapterPosition(this.f42355b);
                BaseChatHolder baseChatHolder = findViewHolderForAdapterPosition instanceof BaseChatHolder ? (BaseChatHolder) findViewHolderForAdapterPosition : null;
                if (baseChatHolder != null) {
                    BaseChatHolder.a0(baseChatHolder, false, 1, null);
                }
            }
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class i0 extends Lambda implements Function0<Unit> {
        i0() {
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
            ChatDetailsFragment.this.I3();
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\"\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\r"}, d2 = {"com/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$j", "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;", "", "term", "", "c", "Lcom/giphy/sdk/ui/GPHContentType;", "selectedContentType", "a", "Lcom/giphy/sdk/core/models/Media;", "media", "searchTerm", "b", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class j implements GiphyDialogFragment.b {
        j() {
        }

        @Override // com.giphy.sdk.ui.views.GiphyDialogFragment.b
        public void a(@m8.g GPHContentType selectedContentType) {
            Intrinsics.checkNotNullParameter(selectedContentType, "selectedContentType");
            ChatDetailsFragment.this.U3(BottomVisibilityState.NONE);
        }

        @Override // com.giphy.sdk.ui.views.GiphyDialogFragment.b
        public void b(@m8.g Media media, @m8.h String str, @m8.g GPHContentType selectedContentType) {
            String mediaId;
            Intrinsics.checkNotNullParameter(media, "media");
            Intrinsics.checkNotNullParameter(selectedContentType, "selectedContentType");
            ChatDetailsFragment.this.U3(BottomVisibilityState.NONE);
            Image original = media.getImages().getOriginal();
            if (original == null || (mediaId = original.getMediaId()) == null) {
                return;
            }
            ChatDetailsViewModel Y = ChatDetailsFragment.this.Y();
            Image original2 = media.getImages().getOriginal();
            Intrinsics.checkNotNull(original2);
            int width = original2.getWidth();
            Image original3 = media.getImages().getOriginal();
            Intrinsics.checkNotNull(original3);
            Y.x1(mediaId, new Size(width, original3.getHeight()));
        }

        @Override // com.giphy.sdk.ui.views.GiphyDialogFragment.b
        public void c(@m8.g String term) {
            Intrinsics.checkNotNullParameter(term, "term");
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "", "it", "", "a", "(Ljava/util/List;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class j0 extends Lambda implements Function1<List<? extends String>, Unit> {
        j0() {
            super(1);
        }

        public final void a(@m8.g List<String> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (ChatDetailsFragment.this.isDetached()) {
                return;
            }
            com.im.freechat.utils.r rVar = com.im.freechat.utils.r.f43826a;
            FragmentActivity requireActivity = ChatDetailsFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            rVar.q(requireActivity, it, ChatDetailsFragment.this.f42314u);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(List<? extends String> list) {
            a(list);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\t"}, d2 = {"com/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$k", "Landroid/animation/Animator$AnimatorListener;", "Landroid/animation/Animator;", "p0", "", "onAnimationEnd", "onAnimationStart", "onAnimationCancel", "onAnimationRepeat", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class k implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FrameLayout f42359a;

        k(FrameLayout frameLayout) {
            this.f42359a = frameLayout;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(@m8.h Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@m8.h Animator animator) {
            FrameLayout frameLayout = this.f42359a;
            Intrinsics.checkNotNullExpressionValue(frameLayout, "");
            frameLayout.setVisibility(8);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(@m8.h Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(@m8.h Animator animator) {
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "", "it", "", "a", "(Ljava/util/List;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class k0 extends Lambda implements Function1<List<? extends String>, Unit> {
        k0() {
            super(1);
        }

        public final void a(@m8.g List<String> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            ChatDetailsFragment.this.u3(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(List<? extends String> list) {
            a(list);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0004H\u0016¨\u0006\u000b"}, d2 = {"com/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "dx", "dy", "", "onScrolled", "newState", "onScrollStateChanged", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class l extends RecyclerView.OnScrollListener {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RecyclerView f42362b;

        l(RecyclerView recyclerView) {
            this.f42362b = recyclerView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(ChatDetailsFragment this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            f4.i D1 = ChatDetailsFragment.D1(this$0);
            TextView textView = D1 != null ? D1.B : null;
            if (textView == null) {
                return;
            }
            textView.setVisibility(8);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@m8.g RecyclerView recyclerView, int i4) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i4);
            if (i4 == 0) {
                RecyclerView recyclerView2 = this.f42362b;
                final ChatDetailsFragment chatDetailsFragment = ChatDetailsFragment.this;
                recyclerView2.postDelayed(new Runnable() { // from class: com.im.freechat.ui.chat.chatdetails.l1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatDetailsFragment.l.b(ChatDetailsFragment.this);
                    }
                }, 1500L);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
            if (r6.intValue() > 0) goto L10;
         */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0095  */
        /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onScrolled(@m8.g androidx.recyclerview.widget.RecyclerView r4, int r5, int r6) {
            /*
                r3 = this;
                java.lang.String r0 = "recyclerView"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                super.onScrolled(r4, r5, r6)
                com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment r5 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.this
                f4.i r5 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.y1(r5)
                com.im.freechat.ui.widget.ChatDetailsDownLayout r5 = r5.f65567u
                java.lang.String r0 = "binding.layoutDown"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)
                com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment r0 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.this
                com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r0 = r0.Y()
                androidx.lifecycle.MutableLiveData r0 = r0.I0()
                java.lang.Object r0 = r0.getValue()
                java.util.Map r0 = (java.util.Map) r0
                r1 = 0
                r2 = 1
                if (r0 == 0) goto L32
                boolean r0 = r0.isEmpty()
                if (r0 == 0) goto L30
                goto L32
            L30:
                r0 = 0
                goto L33
            L32:
                r0 = 1
            L33:
                if (r0 == 0) goto L63
                if (r6 < 0) goto L3d
                boolean r6 = r4.canScrollVertically(r2)
                if (r6 != 0) goto L59
            L3d:
                com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment r6 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.this
                com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r6 = r6.Y()
                androidx.lifecycle.LiveData r6 = r6.R0()
                java.lang.Object r6 = r6.getValue()
                java.lang.Integer r6 = (java.lang.Integer) r6
                if (r6 != 0) goto L53
                java.lang.Integer r6 = java.lang.Integer.valueOf(r1)
            L53:
                int r6 = r6.intValue()
                if (r6 <= 0) goto L63
            L59:
                com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment r6 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.this
                boolean r6 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.H1(r6)
                if (r6 != 0) goto L63
                r6 = 1
                goto L64
            L63:
                r6 = 0
            L64:
                if (r6 == 0) goto L68
                r6 = 0
                goto L6a
            L68:
                r6 = 8
            L6a:
                r5.setVisibility(r6)
                com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment r5 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.this
                boolean r6 = r4.canScrollVertically(r2)
                if (r6 == 0) goto L86
                com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment r6 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.this
                boolean r6 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.H1(r6)
                if (r6 == 0) goto L84
                int r6 = r4.getScrollState()
                if (r6 != 0) goto L84
                goto L86
            L84:
                r6 = 0
                goto L87
            L86:
                r6 = 1
            L87:
                com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.O1(r5, r6)
                com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment r5 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.this
                com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.v1(r5)
                int r4 = r4.getScrollState()
                if (r4 != r2) goto Lde
                com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment r4 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.this
                f4.i r4 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.y1(r4)
                android.widget.TextView r4 = r4.B
                com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment r5 = com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.this
                androidx.recyclerview.widget.RecyclerView r6 = r3.f42362b
                java.lang.String r0 = ""
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r0)
                r4.setVisibility(r1)
                com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r5 = r5.Y()
                androidx.lifecycle.LiveData r5 = r5.x0()
                java.lang.Object r5 = r5.getValue()
                kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
                java.util.List r5 = (java.util.List) r5
                androidx.recyclerview.widget.RecyclerView$LayoutManager r6 = r6.getLayoutManager()
                java.lang.String r0 = "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"
                kotlin.jvm.internal.Intrinsics.checkNotNull(r6, r0)
                androidx.recyclerview.widget.LinearLayoutManager r6 = (androidx.recyclerview.widget.LinearLayoutManager) r6
                int r6 = r6.findLastVisibleItemPosition()
                java.lang.Object r5 = r5.get(r6)
                com.im.freechat.ui.chat.chatdetails.messagelist.d r5 = (com.im.freechat.ui.chat.chatdetails.messagelist.d) r5
                com.im.freechat.shared.entities.message.Message r5 = r5.i()
                long r5 = r5.getSendTime()
                java.lang.String r5 = com.im.freechat.extend.m.g(r5)
                r4.setText(r5)
            Lde:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.l.onScrolled(androidx.recyclerview.widget.RecyclerView, int, int):void");
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\t\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Long;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class l0 extends Lambda implements Function0<Long> {
        l0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final Long invoke() {
            return Long.valueOf(ChatDetailsFragment.this.requireArguments().getLong(k4.b.f84740g, 0L));
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class m extends Lambda implements Function0<Unit> {
        m() {
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
            ChatDetailsFragment.y1(ChatDetailsFragment.this).f65557k.smoothScrollToPosition(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "checked", "", "a", "(Z)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class m0 extends Lambda implements Function1<Boolean, Unit> {
        m0() {
            super(1);
        }

        public final void a(boolean z9) {
            ChatDetailsFragment.this.Y().j0(z9);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
            a(bool.booleanValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0010&\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0014\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "", "", "it", "", "a", "(Ljava/util/Map$Entry;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class n extends Lambda implements Function1<Map.Entry<? extends Integer, ? extends String>, Unit> {
        n() {
            super(1);
        }

        public final void a(@m8.g Map.Entry<Integer, String> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Integer key = it.getKey();
            ChatDetailsFragment chatDetailsFragment = ChatDetailsFragment.this;
            chatDetailsFragment.Y().e1(key.intValue());
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Map.Entry<? extends Integer, ? extends String> entry) {
            a(entry);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "url", "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;", TypedValues.Attributes.S_TARGET, "", "a", "(Ljava/lang/String;Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class o extends Lambda implements Function2<String, MessageStyle.StyleUrlTarget, Unit> {

        /* compiled from: ChatDetailsFragment.kt */
        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[MessageStyle.StyleUrlTarget.values().length];
                iArr[MessageStyle.StyleUrlTarget.APP.ordinal()] = 1;
                iArr[MessageStyle.StyleUrlTarget.BROWSER.ordinal()] = 2;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        o() {
            super(2);
        }

        public final void a(@m8.g String url, @m8.g MessageStyle.StyleUrlTarget target) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(target, "target");
            int i4 = a.$EnumSwitchMapping$0[target.ordinal()];
            if (i4 == 1) {
                ChatDetailsFragment.this.Y().d1(url);
            } else if (i4 != 2) {
            } else {
                ChatDetailsFragment.this.requireContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(String str, MessageStyle.StyleUrlTarget styleUrlTarget) {
            a(str, styleUrlTarget);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "it", "", "b", "(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class p extends Lambda implements Function1<com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> {
        p() {
            super(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(List items, ChatDetailsFragment this$0, com.im.freechat.ui.chat.chatdetails.messagelist.d it, DialogInterface dialogInterface, int i4) {
            int collectionSizeOrDefault;
            List plus;
            List<Long> distinct;
            Intrinsics.checkNotNullParameter(items, "$items");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(it, "$it");
            String str = (String) items.get(i4);
            if (Intrinsics.areEqual(str, this$0.getString(b.s.f2270h0))) {
                ChatDetailsViewModel Y = this$0.Y();
                List<Attachment> attachments = it.i().getAttachments();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(attachments, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (Attachment attachment : attachments) {
                    arrayList.add(Long.valueOf(attachment.getMediaId()));
                }
                plus = CollectionsKt___CollectionsKt.plus((Collection<? extends Long>) ((Collection<? extends Object>) arrayList), Long.valueOf(it.i().getMessageId()));
                distinct = CollectionsKt___CollectionsKt.distinct(plus);
                Y.m0(distinct);
            } else if (Intrinsics.areEqual(str, this$0.getString(b.s.J8))) {
                this$0.Y().n1(it.i().getMessageId());
            }
        }

        public final void b(@m8.g final com.im.freechat.ui.chat.chatdetails.messagelist.d it) {
            final List mutableListOf;
            Intrinsics.checkNotNullParameter(it, "it");
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(ChatDetailsFragment.this.getString(b.s.f2270h0), ChatDetailsFragment.this.getString(b.s.J8));
            AlertDialog.Builder builder = new AlertDialog.Builder(ChatDetailsFragment.this.requireContext());
            Object[] array = mutableListOf.toArray(new String[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            final ChatDetailsFragment chatDetailsFragment = ChatDetailsFragment.this;
            builder.setItems((CharSequence[]) array, new DialogInterface.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.m1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i4) {
                    ChatDetailsFragment.p.c(mutableListOf, chatDetailsFragment, it, dialogInterface, i4);
                }
            }).show();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(com.im.freechat.ui.chat.chatdetails.messagelist.d dVar) {
            b(dVar);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "it", "", "b", "(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class q extends Lambda implements Function1<com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> {
        q() {
            super(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(List items, ChatDetailsFragment this$0, com.im.freechat.ui.chat.chatdetails.messagelist.d it, DialogInterface dialogInterface, int i4) {
            List<Message> listOf;
            int collectionSizeOrDefault;
            List plus;
            List<Long> distinct;
            int collectionSizeOrDefault2;
            List plus2;
            List<Long> distinct2;
            List listOf2;
            int collectionSizeOrDefault3;
            Intrinsics.checkNotNullParameter(items, "$items");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(it, "$it");
            String str = (String) items.get(i4);
            if (Intrinsics.areEqual(str, this$0.getString(b.s.f2249f0))) {
                FragmentActivity requireActivity = this$0.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                com.im.freechat.extend.m.b(requireActivity, it.i());
            } else if (Intrinsics.areEqual(str, this$0.getString(b.s.M0))) {
                this$0.K3(it.i());
            } else if (Intrinsics.areEqual(str, this$0.getString(b.s.f2352p0))) {
                if (com.im.freechat.extend.p.y(it.i())) {
                    List<Attachment> attachments = it.i().getAttachments();
                    collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(attachments, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault3);
                    for (Attachment attachment : attachments) {
                        arrayList.add(Long.valueOf(attachment.getMediaId()));
                    }
                    this$0.Z1(arrayList);
                    return;
                }
                listOf2 = CollectionsKt__CollectionsJVMKt.listOf(Long.valueOf(it.i().getMessageId()));
                this$0.Z1(listOf2);
            } else if (Intrinsics.areEqual(str, this$0.getString(b.s.V1))) {
                this$0.F3(it);
            } else if (Intrinsics.areEqual(str, this$0.getString(b.s.X1))) {
                this$0.Z3();
            } else if (Intrinsics.areEqual(str, this$0.getString(b.s.f2290j0))) {
                ChatDetailsViewModel Y = this$0.Y();
                List<Attachment> attachments2 = it.i().getAttachments();
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(attachments2, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                for (Attachment attachment2 : attachments2) {
                    arrayList2.add(Long.valueOf(attachment2.getMediaId()));
                }
                plus2 = CollectionsKt___CollectionsKt.plus((Collection<? extends Long>) ((Collection<? extends Object>) arrayList2), Long.valueOf(it.i().getMessageId()));
                distinct2 = CollectionsKt___CollectionsKt.distinct(plus2);
                Y.m0(distinct2);
            } else if (Intrinsics.areEqual(str, this$0.getString(b.s.f2280i0))) {
                ChatDetailsViewModel Y2 = this$0.Y();
                List<Attachment> attachments3 = it.i().getAttachments();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(attachments3, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
                for (Attachment attachment3 : attachments3) {
                    arrayList3.add(Long.valueOf(attachment3.getMediaId()));
                }
                plus = CollectionsKt___CollectionsKt.plus((Collection<? extends Long>) ((Collection<? extends Object>) arrayList3), Long.valueOf(it.i().getMessageId()));
                distinct = CollectionsKt___CollectionsKt.distinct(plus);
                Y2.l0(distinct);
            } else if (Intrinsics.areEqual(str, this$0.getString(b.s.f2311l0))) {
                this$0.X3(it.i());
            } else if (Intrinsics.areEqual(str, this$0.getString(b.s.N0))) {
                ChatDetailsViewModel Y3 = this$0.Y();
                listOf = CollectionsKt__CollectionsJVMKt.listOf(it.i());
                Y3.p1(listOf);
            } else if (Intrinsics.areEqual(str, this$0.getString(b.s.O0))) {
                this$0.Y().o1(it.i().getAttachments());
            }
        }

        public final void b(@m8.g final com.im.freechat.ui.chat.chatdetails.messagelist.d it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (ChatDetailsFragment.this.j2()) {
                return;
            }
            boolean isCurrentUser = it.i().getSender().isCurrentUser();
            Chat s02 = ChatDetailsFragment.this.Y().s0();
            boolean z9 = s02 != null && com.im.freechat.extend.g.a(s02);
            final ArrayList arrayList = new ArrayList();
            String string = ChatDetailsFragment.this.getString(b.s.f2290j0);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.activ…etails_delete_for_myself)");
            arrayList.add(string);
            if (com.im.freechat.extend.p.o(it.i()) && !com.im.freechat.extend.p.x(it.i()) && isCurrentUser) {
                String string2 = ChatDetailsFragment.this.getString(b.s.f2311l0);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.activity_chat_details_edit)");
                arrayList.add(string2);
                String string3 = ChatDetailsFragment.this.getString(b.s.f2249f0);
                Intrinsics.checkNotNullExpressionValue(string3, "getString(R.string.activity_chat_details_copy)");
                arrayList.add(string3);
            }
            if (!z9) {
                String string4 = ChatDetailsFragment.this.getString(b.s.M0);
                Intrinsics.checkNotNullExpressionValue(string4, "getString(R.string.activity_chat_details_reply)");
                arrayList.add(string4);
            }
            String string5 = ChatDetailsFragment.this.getString(b.s.f2352p0);
            Intrinsics.checkNotNullExpressionValue(string5, "getString(R.string.activity_chat_details_forward)");
            arrayList.add(string5);
            if (!z9 && (!ChatDetailsFragment.this.Y().V0() || ChatDetailsFragment.this.Y().S0() || ChatDetailsFragment.this.Y().W0())) {
                ChatDetailsFragment chatDetailsFragment = ChatDetailsFragment.this;
                Message value = chatDetailsFragment.Y().F0().getValue();
                String string6 = chatDetailsFragment.getString(value != null && (it.i().getMessageId() > value.getMessageId() ? 1 : (it.i().getMessageId() == value.getMessageId() ? 0 : -1)) == 0 ? b.s.X1 : b.s.V1);
                Intrinsics.checkNotNullExpressionValue(string6, "getString(if (it.message…g.activity_main_chat_pin)");
                arrayList.add(string6);
            }
            Chat s03 = ChatDetailsFragment.this.Y().s0();
            Intrinsics.checkNotNull(s03);
            if (!com.im.freechat.extend.g.b(s03)) {
                String string7 = ChatDetailsFragment.this.getString(b.s.N0);
                Intrinsics.checkNotNullExpressionValue(string7, "getString(R.string.activity_chat_details_save)");
                arrayList.add(string7);
            }
            if (!it.i().getAttachments().isEmpty()) {
                String string8 = ChatDetailsFragment.this.getString(b.s.O0);
                Intrinsics.checkNotNullExpressionValue(string8, "getString(R.string.activ…y_chat_details_save_file)");
                arrayList.add(string8);
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(ChatDetailsFragment.this.requireContext());
            Object[] array = arrayList.toArray(new String[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            final ChatDetailsFragment chatDetailsFragment2 = ChatDetailsFragment.this;
            builder.setItems((CharSequence[]) array, new DialogInterface.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.n1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i4) {
                    ChatDetailsFragment.q.c(arrayList, chatDetailsFragment2, it, dialogInterface, i4);
                }
            }).show();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(com.im.freechat.ui.chat.chatdetails.messagelist.d dVar) {
            b(dVar);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "wrapper", "", t.b.f83859d, "", "a", "(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Z)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class r extends Lambda implements Function2<com.im.freechat.ui.chat.chatdetails.messagelist.d, Boolean, Unit> {
        r() {
            super(2);
        }

        public final void a(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d wrapper, boolean z9) {
            Intrinsics.checkNotNullParameter(wrapper, "wrapper");
            if (ChatDetailsFragment.this.j2()) {
                FragmentActivity requireActivity = ChatDetailsFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                com.im.freechat.extend.m.b(requireActivity, wrapper.i());
                return;
            }
            ChatDetailsFragment.this.Y().r1(wrapper, z9);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(com.im.freechat.ui.chat.chatdetails.messagelist.d dVar, Boolean bool) {
            a(dVar, bool.booleanValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "messageId", "", "a", "(J)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class s extends Lambda implements Function1<Long, Unit> {
        s() {
            super(1);
        }

        public final void a(long j4) {
            ChatDetailsFragment.this.Y1(Long.valueOf(j4));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Long l10) {
            a(l10.longValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "it", "", "a", "(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class t extends Lambda implements Function1<com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> {
        t() {
            super(1);
        }

        public final void a(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d it) {
            Object first;
            Intrinsics.checkNotNullParameter(it, "it");
            ChatDetailsFragment chatDetailsFragment = ChatDetailsFragment.this;
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) it.i().getAttachments());
            chatDetailsFragment.w3((Attachment) first);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(com.im.freechat.ui.chat.chatdetails.messagelist.d dVar) {
            a(dVar);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class u extends Lambda implements Function1<Integer, Unit> {
        u() {
            super(1);
        }

        public final void a(int i4) {
            ChatDetailsFragment.this.Y().e1(i4);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(J)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class v extends Lambda implements Function1<Long, Unit> {
        v() {
            super(1);
        }

        public final void a(long j4) {
            ChatDetailsFragment.this.Y().g0(j4);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Long l10) {
            a(l10.longValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/im/freechat/shared/entities/message/AudioAttachment;", "audio", "", ContextChain.TAG_INFRA, "", "a", "(Lcom/im/freechat/shared/entities/message/AudioAttachment;I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class w extends Lambda implements Function2<AudioAttachment, Integer, Unit> {
        w() {
            super(2);
        }

        public final void a(@m8.g AudioAttachment audio, int i4) {
            Intrinsics.checkNotNullParameter(audio, "audio");
            if (audio.getPlaying()) {
                ChatDetailsFragment.this.Y().q1(i4);
                return;
            }
            ChatDetailsViewModel.i1(ChatDetailsFragment.this.Y(), audio.getMediaId(), i4, false, 4, null);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(AudioAttachment audioAttachment, Integer num) {
            a(audioAttachment, num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", k4.b.f84734a, "", "messageId", "", "a", "(ILjava/lang/Long;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class x extends Lambda implements Function2<Integer, Long, Unit> {
        x() {
            super(2);
        }

        public final void a(int i4, @m8.h Long l10) {
            if (ChatDetailsFragment.this.d2() == i4) {
                ChatDetailsFragment.this.Y1(l10);
            } else {
                ChatDetailsFragment.this.Y().e(ChatDetailsViewModel.Directions.NAVIGATE_CHAT, BundleKt.bundleOf(TuplesKt.to(k4.b.f84734a, Integer.valueOf(i4)), TuplesKt.to(k4.b.f84736c, l10)));
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Integer num, Long l10) {
            a(num.intValue(), l10);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class y extends Lambda implements Function0<Unit> {
        y() {
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
            Uri j4 = ChatDetailsFragment.this.c2().j();
            if (j4 != null) {
                ChatDetailsFragment.this.Y().y1(j4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class z extends Lambda implements Function0<Boolean> {
        z() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Boolean invoke() {
            return Boolean.valueOf(ChatDetailsFragment.this.s3());
        }
    }

    public ChatDetailsFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        Lazy lazy8;
        Lazy lazy9;
        lazy = LazyKt__LazyJVMKt.lazy(new e());
        this.f42296c = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(h.f42352a);
        this.f42297d = lazy2;
        ChatDetailsFragment$special$$inlined$viewModel$default$1 chatDetailsFragment$special$$inlined$viewModel$default$1 = new ChatDetailsFragment$special$$inlined$viewModel$default$1(this);
        this.f42298e = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(ChatDetailsViewModel.class), new ChatDetailsFragment$special$$inlined$viewModel$default$3(chatDetailsFragment$special$$inlined$viewModel$default$1), new ChatDetailsFragment$special$$inlined$viewModel$default$2(chatDetailsFragment$special$$inlined$viewModel$default$1, null, null, org.koin.android.ext.android.a.a(this)));
        lazy3 = LazyKt__LazyJVMKt.lazy(new f());
        this.f42299f = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, (Function0) new ChatDetailsFragment$special$$inlined$inject$default$1(this, null, null));
        this.f42300g = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(g.f42349a);
        this.f42301h = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new e0());
        this.f42302i = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new l0());
        this.f42305l = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(new f0());
        this.f42306m = lazy8;
        lazy9 = LazyKt__LazyJVMKt.lazy(d.f42343a);
        this.f42307n = lazy9;
        this.f42309p = BottomVisibilityState.NONE;
        this.f42310q = new h0();
        this.f42313t = com.im.freechat.utils.t.b(this, new i0(), new j0(), new k0());
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.im.freechat.ui.chat.chatdetails.f0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ChatDetailsFragment.A3(ChatDetailsFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…missionsForAction(null) }");
        this.f42314u = registerForActivityResult;
        ActivityResultLauncher<String> registerForActivityResult2 = registerForActivityResult(new ActivityResultContracts.GetMultipleContents(), new ActivityResultCallback() { // from class: com.im.freechat.ui.chat.chatdetails.i0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ChatDetailsFragment.B3(ChatDetailsFragment.this, (List) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult2, "registerForActivityResul…nMediaChoosen(it) }\n    }");
        this.f42315v = registerForActivityResult2;
        ActivityResultLauncher<Intent> registerForActivityResult3 = registerForActivityResult(new com.tangxiaolv.telegramgallery.p(), new ActivityResultCallback() { // from class: com.im.freechat.ui.chat.chatdetails.j0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ChatDetailsFragment.E3(ChatDetailsFragment.this, (List) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult3, "registerForActivityResul…nMediaChoosen(it) }\n    }");
        this.f42316w = registerForActivityResult3;
        ActivityResultLauncher<Uri> registerForActivityResult4 = registerForActivityResult(new ActivityResultContracts.TakePicture(), new ActivityResultCallback() { // from class: com.im.freechat.ui.chat.chatdetails.g0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ChatDetailsFragment.Y3(ChatDetailsFragment.this, (Boolean) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult4, "registerForActivityResul…raCaptureUri = null\n    }");
        this.f42317x = registerForActivityResult4;
        ActivityResultLauncher<Intent> registerForActivityResult5 = registerForActivityResult(new com.tangxiaolv.telegramgallery.j(), new ActivityResultCallback() { // from class: com.im.freechat.ui.chat.chatdetails.d0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ChatDetailsFragment.r2(ChatDetailsFragment.this, (Intent) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult5, "registerForActivityResul…nMediaChoosen(it) }\n    }");
        this.f42318y = registerForActivityResult5;
        ActivityResultLauncher<Intent> registerForActivityResult6 = registerForActivityResult(new com.im.freechat.ui.chat.message_gallery.a(), new ActivityResultCallback() { // from class: com.im.freechat.ui.chat.chatdetails.e0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ChatDetailsFragment.z3(ChatDetailsFragment.this, (Bundle) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult6, "registerForActivityResul…        }\n        }\n    }");
        this.B = registerForActivityResult6;
        this.C = new Observer() { // from class: com.im.freechat.ui.chat.chatdetails.z0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatDetailsFragment.O3(ChatDetailsFragment.this, (List) obj);
            }
        };
        this.E = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ChatDetailsAudioPlayLayout chatDetailsAudioPlayLayout = this$0.W().f65548b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A3(ChatDetailsFragment this$0, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.L3(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B2(ChatDetailsFragment this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this$0.d4(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B3(ChatDetailsFragment this$0, List list) {
        Object singleOrNull;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!this$0.j2()) {
            ChatDetailsViewModel Y = this$0.Y();
            Intrinsics.checkNotNullExpressionValue(list, "list");
            singleOrNull = CollectionsKt___CollectionsKt.singleOrNull((List<? extends Object>) list);
            ChosenAttachment Q1 = Y.Q1((Uri) singleOrNull);
            if (Q1 != null) {
                this$0.N3(Q1);
                return;
            }
        }
        Intrinsics.checkNotNullExpressionValue(list, "list");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this$0.t3((Uri) it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Message value = this$0.Y().F0().getValue();
        if (value != null) {
            this$0.Y1(Long.valueOf(value.getMessageId()));
        }
    }

    private final void C3() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        File s9 = com.im.freechat.extend.f.s(requireActivity);
        Context requireContext = requireContext();
        Uri uriForFile = FileProvider.getUriForFile(requireContext, requireActivity().getApplicationContext().getPackageName() + ".provider", s9);
        this.f42311r = uriForFile;
        this.f42317x.launch(uriForFile);
    }

    public static final /* synthetic */ f4.i D1(ChatDetailsFragment chatDetailsFragment) {
        return chatDetailsFragment.X();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Z3();
    }

    private final void D3(boolean z9) {
        ActivityResultLauncher<Intent> activityResultLauncher = this.f42316w;
        p.a aVar = com.tangxiaolv.telegramgallery.p.f56951a;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        activityResultLauncher.launch(aVar.a(requireContext, z9));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E2(ChatDetailsFragment this$0, RecyclerView this_with, View view, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        if (i12 >= i16 || !this$0.f42295b) {
            return;
        }
        this_with.scrollBy(0, i16 - i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E3(ChatDetailsFragment this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Iterator it2 = it.iterator();
        while (it2.hasNext()) {
            this$0.t3((Uri) it2.next());
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private final void F2() {
        f4.v1 v1Var = W().f65550d;
        Chat s02 = Y().s0();
        boolean z9 = true;
        if ((s02 == null || !com.im.freechat.extend.g.a(s02)) ? false : false) {
            ConstraintLayout root = v1Var.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "root");
            root.setVisibility(8);
            return;
        }
        v1Var.f65811g.setOnTouchListener(new View.OnTouchListener() { // from class: com.im.freechat.ui.chat.chatdetails.c0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean G2;
                G2 = ChatDetailsFragment.G2(ChatDetailsFragment.this, view, motionEvent);
                return G2;
            }
        });
        Y().I0().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.chatdetails.a1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatDetailsFragment.H2(ChatDetailsFragment.this, (Map) obj);
            }
        });
        Y().q0().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.chatdetails.m0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatDetailsFragment.I2(ChatDetailsFragment.this, (ChosenAttachment) obj);
            }
        });
        v1Var.f65809e.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.J2(ChatDetailsFragment.this, view);
            }
        });
        v1Var.f65810f.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.K2(ChatDetailsFragment.this, view);
            }
        });
        v1Var.f65812h.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.L2(ChatDetailsFragment.this, view);
            }
        });
        v1Var.f65808d.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.N2(ChatDetailsFragment.this, view);
            }
        });
        v1Var.f65807c.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.O2(ChatDetailsFragment.this, view);
            }
        });
        v1Var.f65814j.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.P2(ChatDetailsFragment.this, view);
            }
        });
        v1Var.f65825u.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.Q2(ChatDetailsFragment.this, view);
            }
        });
        v1Var.f65824t.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.i1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.R2(ChatDetailsFragment.this, view);
            }
        });
        MessageEditText etMessage = v1Var.f65816l;
        Intrinsics.checkNotNullExpressionValue(etMessage, "etMessage");
        etMessage.addTextChangedListener(new b0(v1Var));
        v1Var.f65816l.setOnBackPressed(new z());
        v1Var.f65816l.setCommitCallback(new a0());
        v1Var.f65816l.requestFocus();
        View findViewById = W().A.f65889j.findViewById(R.id.search_src_text);
        Intrinsics.checkNotNullExpressionValue(findViewById, "binding.toolbar.searchVi…pat.R.id.search_src_text)");
        R1(findViewById);
        MessageEditText etMessage2 = v1Var.f65816l;
        Intrinsics.checkNotNullExpressionValue(etMessage2, "etMessage");
        R1(etMessage2);
        v1Var.f65813i.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.k1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.S2(ChatDetailsFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F3(final com.im.freechat.ui.chat.chatdetails.messagelist.d dVar) {
        new AlertDialog.Builder(requireContext()).setTitle(b.s.E0).setMessage(b.s.F0).setPositiveButton(b.s.V1, new DialogInterface.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.h0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                ChatDetailsFragment.G3(ChatDetailsFragment.this, dVar, dialogInterface, i4);
            }
        }).setNegativeButton(b.s.I2, d1.f42556a).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean G2(ChatDetailsFragment this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int action = motionEvent.getAction();
        if (action == 0) {
            this$0.A = motionEvent.getRawX();
            this$0.D = true;
            ChatDetailsAudioRecordLayout chatDetailsAudioRecordLayout = this$0.W().f65549c;
            Intrinsics.checkNotNullExpressionValue(chatDetailsAudioRecordLayout, "binding.audioRecordLayout");
            chatDetailsAudioRecordLayout.setVisibility(0);
            this$0.W().f65549c.d();
        } else if (action != 1) {
            if (action == 2 && this$0.D) {
                this$0.f42319z = this$0.A - motionEvent.getRawX() >= ((float) this$0.f2());
                this$0.W().f65549c.f(this$0.f42319z);
            }
        } else if (this$0.D) {
            if (this$0.f42319z) {
                this$0.f42310q.a();
            } else {
                this$0.f42310q.stop();
            }
            this$0.W().f65549c.f(false);
            this$0.W().f65549c.e();
            this$0.W().f65549c.setVisibility(8);
            this$0.D = false;
            this$0.f42319z = false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G3(ChatDetailsFragment this$0, com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(messageWrapper, "$messageWrapper");
        this$0.Y().g1(messageWrapper.i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H2(ChatDetailsFragment this$0, Map it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.im.freechat.ui.chat.chatdetails.messagelist.b a22 = this$0.a2();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        a22.I(!it.isEmpty());
        this$0.h4(it);
        this$0.j4();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H3(DialogInterface dialogInterface, int i4) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I2(ChatDetailsFragment this$0, ChosenAttachment chosenAttachment) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.j4();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I3() {
        a aVar = this.f42312s;
        if (Intrinsics.areEqual(aVar, a.c.f42333b)) {
            D3(true);
        } else if (Intrinsics.areEqual(aVar, a.b.f42332b)) {
            D3(false);
        } else if (Intrinsics.areEqual(aVar, a.C0346a.f42331b)) {
            this.f42315v.launch(AsyncHttpRequest.f44558m);
        } else if (Intrinsics.areEqual(aVar, a.d.f42334b)) {
            C3();
        } else if (Intrinsics.areEqual(aVar, a.f.f42336b)) {
            ChatDetailsViewModel Y = Y();
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            Y.F1(com.im.freechat.extend.f.r(requireActivity));
        } else if (Intrinsics.areEqual(aVar, a.g.f42337b)) {
            c2().z();
        } else if (aVar instanceof a.e) {
            Y().o0(((a.e) aVar).b());
        }
        this.f42312s = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BottomVisibilityState bottomVisibilityState = this$0.f42309p;
        BottomVisibilityState bottomVisibilityState2 = BottomVisibilityState.EMOJI;
        if (bottomVisibilityState == bottomVisibilityState2) {
            bottomVisibilityState2 = BottomVisibilityState.STICKERS;
        }
        this$0.U3(bottomVisibilityState2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.j2()) {
            this$0.L3(a.c.f42333b);
            return;
        }
        BottomVisibilityState bottomVisibilityState = this$0.f42309p;
        BottomVisibilityState bottomVisibilityState2 = BottomVisibilityState.ATTACHMENT;
        if (bottomVisibilityState == bottomVisibilityState2) {
            bottomVisibilityState2 = BottomVisibilityState.NONE;
        }
        this$0.U3(bottomVisibilityState2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K3(Message message) {
        z1 value = Y().y0().getValue();
        if ((value != null ? value.j() : null) == Message.ExtraMessageType.EDIT) {
            Y().N0().setValue("");
        }
        Y().A1(new z1(message, Message.ExtraMessageType.QUOTE, null, null, 12, null));
        Y().m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L2(final ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Y().z1();
        this$0.W().f65557k.postDelayed(new Runnable() { // from class: com.im.freechat.ui.chat.chatdetails.c1
            @Override // java.lang.Runnable
            public final void run() {
                ChatDetailsFragment.M2(ChatDetailsFragment.this);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M2(ChatDetailsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.W().f65557k.smoothScrollToPosition(0);
    }

    private final void M3() {
        this.E = -1;
        RelativeLayout relativeLayout = W().f65572z;
        Intrinsics.checkNotNullExpressionValue(relativeLayout, "binding.searchStatusLayout");
        relativeLayout.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Y().z1();
    }

    private final void N3(ChosenAttachment chosenAttachment) {
        String extension;
        File file = new File(chosenAttachment.getFilePath());
        ChatDetailsViewModel Y = Y();
        extension = FilesKt__UtilsKt.getExtension(file);
        String M0 = Y.M0(extension);
        ActivityResultLauncher<Intent> activityResultLauncher = this.f42318y;
        j.a aVar = com.tangxiaolv.telegramgallery.j.f56723a;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        activityResultLauncher.launch(aVar.a(requireContext, chosenAttachment.getFilePath(), M0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        z1 value = this$0.Y().y0().getValue();
        if ((value != null ? value.j() : null) == Message.ExtraMessageType.EDIT) {
            this$0.Y().N0().setValue(null);
        }
        this$0.Y().A1(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O3(ChatDetailsFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list == null) {
            this$0.M3();
            return;
        }
        RelativeLayout relativeLayout = this$0.W().f65572z;
        Intrinsics.checkNotNullExpressionValue(relativeLayout, "binding.searchStatusLayout");
        relativeLayout.setVisibility(0);
        this$0.E = -1;
        ImageView imageView = this$0.W().f65565s;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivSearchUp");
        imageView.setVisibility(list.isEmpty() ^ true ? 0 : 8);
        ImageView imageView2 = this$0.W().f65564r;
        Intrinsics.checkNotNullExpressionValue(imageView2, "binding.ivSearchDown");
        imageView2.setVisibility(list.isEmpty() ^ true ? 0 : 8);
        if (!list.isEmpty()) {
            this$0.q3(1);
        } else {
            this$0.W().C.setText(this$0.getString(b.s.O8, 0, 0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Y().n0();
    }

    private final void P3(BottomVisibilityState bottomVisibilityState) {
        this.f42309p = bottomVisibilityState;
        W().f65550d.f65809e.setImageResource(bottomVisibilityState == BottomVisibilityState.EMOJI ? b.h.f1692w6 : b.h.f1682v6);
        this.f42309p = bottomVisibilityState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void Q2(com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment r9, android.view.View r10) {
        /*
            java.lang.String r10 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r10)
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r10 = r9.Y()
            androidx.lifecycle.MutableLiveData r10 = r10.I0()
            java.lang.Object r10 = r10.getValue()
            java.util.Map r10 = (java.util.Map) r10
            r0 = 0
            if (r10 == 0) goto L23
            java.util.Set r10 = r10.keySet()
            if (r10 == 0) goto L23
            java.lang.Object r10 = kotlin.collections.CollectionsKt.firstOrNull(r10)
            java.lang.Long r10 = (java.lang.Long) r10
            goto L24
        L23:
            r10 = r0
        L24:
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r1 = r9.Y()
            androidx.lifecycle.MutableLiveData r1 = r1.E0()
            java.lang.Object r1 = r1.getValue()
            java.util.List r1 = (java.util.List) r1
            if (r1 == 0) goto L94
            java.util.Iterator r1 = r1.iterator()
        L38:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L8c
            java.lang.Object r2 = r1.next()
            r3 = r2
            com.im.freechat.shared.entities.message.Message r3 = (com.im.freechat.shared.entities.message.Message) r3
            long r4 = r3.getMessageId()
            if (r10 != 0) goto L4c
            goto L54
        L4c:
            long r6 = r10.longValue()
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L88
        L54:
            java.util.List r3 = r3.getAttachments()
            java.util.ArrayList r4 = new java.util.ArrayList
            r5 = 10
            int r5 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r3, r5)
            r4.<init>(r5)
            java.util.Iterator r3 = r3.iterator()
        L67:
            boolean r5 = r3.hasNext()
            if (r5 == 0) goto L7f
            java.lang.Object r5 = r3.next()
            com.im.freechat.shared.entities.message.Attachment r5 = (com.im.freechat.shared.entities.message.Attachment) r5
            long r5 = r5.getMediaId()
            java.lang.Long r5 = java.lang.Long.valueOf(r5)
            r4.add(r5)
            goto L67
        L7f:
            boolean r3 = kotlin.collections.CollectionsKt.contains(r4, r10)
            if (r3 == 0) goto L86
            goto L88
        L86:
            r3 = 0
            goto L89
        L88:
            r3 = 1
        L89:
            if (r3 == 0) goto L38
            r0 = r2
        L8c:
            com.im.freechat.shared.entities.message.Message r0 = (com.im.freechat.shared.entities.message.Message) r0
            if (r0 != 0) goto L91
            goto L94
        L91:
            r9.K3(r0)
        L94:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.Q2(com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment, android.view.View):void");
    }

    private final void R1(View view) {
        view.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ChatDetailsFragment.S1(ChatDetailsFragment.this, view2);
            }
        });
        view.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.im.freechat.ui.chat.chatdetails.a0
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z9) {
                ChatDetailsFragment.T1(ChatDetailsFragment.this, view2, z9);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R2(ChatDetailsFragment this$0, View view) {
        Set<Long> keySet;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Map<Long, Boolean> value = this$0.Y().I0().getValue();
        List<Long> list = (value == null || (keySet = value.keySet()) == null) ? null : CollectionsKt___CollectionsKt.toList(keySet);
        Intrinsics.checkNotNull(list);
        this$0.Z1(list);
    }

    private final void R3(final Fragment fragment) {
        final FrameLayout frameLayout = W().f65561o;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "");
        if (!(frameLayout.getVisibility() == 0)) {
            frameLayout.setVisibility(0);
            frameLayout.setTranslationY(frameLayout.getHeight());
            frameLayout.animate().translationY(0.0f).setDuration(com.im.freechat.extend.f.x(frameLayout) ? 0L : 200L).setInterpolator(new AccelerateDecelerateInterpolator()).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.im.freechat.ui.chat.chatdetails.a
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ChatDetailsFragment.S3(ChatDetailsFragment.this, frameLayout, valueAnimator);
                }
            }).setListener(null);
            Window window = requireActivity().getWindow();
            Intrinsics.checkNotNullExpressionValue(window, "requireActivity().window");
            com.im.freechat.extend.f.w(frameLayout, window);
        }
        frameLayout.postDelayed(new Runnable() { // from class: com.im.freechat.ui.chat.chatdetails.f1
            @Override // java.lang.Runnable
            public final void run() {
                ChatDetailsFragment.T3(ChatDetailsFragment.this, fragment);
            }
        }, 50L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S1(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f42309p != BottomVisibilityState.KEYBOARD_SHOWING) {
            this$0.U3(BottomVisibilityState.KEYBOARD_REQUEST);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Y().G1();
        this$0.L3(a.g.f42337b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S3(ChatDetailsFragment this$0, FrameLayout this_apply, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this$0.W().f65558l.setPadding(0, 0, 0, (int) (this_apply.getHeight() - this_apply.getTranslationY()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T1(ChatDetailsFragment this$0, View view, boolean z9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!this$0.f42308o && z9) {
            this$0.f42308o = true;
        } else if (!z9 || this$0.f42309p == BottomVisibilityState.KEYBOARD_SHOWING) {
        } else {
            this$0.U3(BottomVisibilityState.KEYBOARD_REQUEST);
        }
    }

    private final void T2() {
        f4.z1 z1Var = W().A;
        if (j2()) {
            Toolbar root = z1Var.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "root");
            root.setVisibility(8);
            return;
        }
        Toolbar root2 = z1Var.getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "root");
        i0(root2);
        z1Var.f65890k.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.U2(ChatDetailsFragment.this, view);
            }
        });
        z1Var.f65884e.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.V2(ChatDetailsFragment.this, view);
            }
        });
        z1Var.f65882c.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.W2(ChatDetailsFragment.this, view);
            }
        });
        z1Var.f65885f.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.X2(ChatDetailsFragment.this, view);
            }
        });
        z1Var.f65883d.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.h1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.Y2(ChatDetailsFragment.this, view);
            }
        });
        z1Var.f65886g.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.Z2(ChatDetailsFragment.this, view);
            }
        });
        z1Var.f65889j.setOnQueryTextListener(new d0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T3(ChatDetailsFragment this$0, Fragment fragment) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(fragment, "$fragment");
        this$0.getChildFragmentManager().beginTransaction().replace(b.j.N6, fragment).commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U1() {
        RecyclerView.LayoutManager layoutManager = W().f65557k.getLayoutManager();
        Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        int findFirstVisibleItemPosition = ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
        Integer value = Y().A0().getValue();
        if (value == null) {
            value = -1;
        }
        int intValue = value.intValue();
        if (intValue < findFirstVisibleItemPosition || intValue == -1 || findFirstVisibleItemPosition == -1) {
            return;
        }
        ChatDetailsViewModel Y = Y();
        List<com.im.freechat.ui.chat.chatdetails.messagelist.d> value2 = Y().x0().getValue();
        Intrinsics.checkNotNull(value2);
        Y.l1(value2.get(Math.min(intValue, findFirstVisibleItemPosition)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.Y().s0() == null) {
            return;
        }
        Chat s02 = this$0.Y().s0();
        Intrinsics.checkNotNull(s02);
        int i4 = c.$EnumSwitchMapping$2[s02.getType().ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                return;
            }
            this$0.Y().c1();
            return;
        }
        UserModel K0 = this$0.Y().K0();
        if (K0 != null) {
            this$0.Y().e1(K0.getUserId());
        }
    }

    private final void V1(z1 z1Var) {
        Unit unit;
        int i4;
        f4.v1 v1Var = W().f65550d;
        if (z1Var != null) {
            Group groupExtra = v1Var.f65817m;
            Intrinsics.checkNotNullExpressionValue(groupExtra, "groupExtra");
            groupExtra.setVisibility(0);
            ImageView imageView = v1Var.f65820p;
            int i10 = c.$EnumSwitchMapping$3[z1Var.j().ordinal()];
            if (i10 == 1) {
                i4 = b.h.F5;
            } else if (i10 == 2) {
                i4 = b.h.f1721z5;
            } else if (i10 != 3) {
                throw new NoWhenBranchMatchedException();
            } else {
                i4 = b.h.f1711y5;
            }
            imageView.setImageResource(i4);
            if (z1Var.j() == Message.ExtraMessageType.EDIT) {
                v1Var.f65823s.setText(getString(b.s.f2322m0));
            } else {
                v1Var.f65823s.setText(z1Var.i().getSender().getDisplayName());
            }
            TextView textView = v1Var.f65822r;
            Message i11 = z1Var.i();
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            textView.setText(com.im.freechat.extend.p.d(i11, requireContext));
            if (!com.im.freechat.extend.p.t(z1Var.i()) && !com.im.freechat.extend.p.B(z1Var.i())) {
                ImageView ivExtraPreview = v1Var.f65821q;
                Intrinsics.checkNotNullExpressionValue(ivExtraPreview, "ivExtraPreview");
                ivExtraPreview.setVisibility(8);
            } else {
                ImageView ivExtraPreview2 = v1Var.f65821q;
                Intrinsics.checkNotNullExpressionValue(ivExtraPreview2, "ivExtraPreview");
                ivExtraPreview2.setVisibility(0);
                ImageView ivExtraPreview3 = v1Var.f65821q;
                Intrinsics.checkNotNullExpressionValue(ivExtraPreview3, "ivExtraPreview");
                com.im.freechat.extend.m.s(ivExtraPreview3, com.im.freechat.extend.p.g(z1Var.i()), 0.0f, true, 0, 10, null);
            }
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            Group groupExtra2 = v1Var.f65817m;
            Intrinsics.checkNotNullExpressionValue(groupExtra2, "groupExtra");
            groupExtra2.setVisibility(8);
            ImageView ivExtraPreview4 = v1Var.f65821q;
            Intrinsics.checkNotNullExpressionValue(ivExtraPreview4, "ivExtraPreview");
            ivExtraPreview4.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void V2(com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment r9, android.view.View r10) {
        /*
            java.lang.String r10 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r10)
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r10 = r9.Y()
            androidx.lifecycle.MutableLiveData r10 = r10.I0()
            java.lang.Object r10 = r10.getValue()
            java.util.Map r10 = (java.util.Map) r10
            r0 = 0
            if (r10 == 0) goto L23
            java.util.Set r10 = r10.keySet()
            if (r10 == 0) goto L23
            java.lang.Object r10 = kotlin.collections.CollectionsKt.firstOrNull(r10)
            java.lang.Long r10 = (java.lang.Long) r10
            goto L24
        L23:
            r10 = r0
        L24:
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r1 = r9.Y()
            androidx.lifecycle.MutableLiveData r1 = r1.E0()
            java.lang.Object r1 = r1.getValue()
            java.util.List r1 = (java.util.List) r1
            if (r1 == 0) goto L9b
            java.util.Iterator r1 = r1.iterator()
        L38:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L8c
            java.lang.Object r2 = r1.next()
            r3 = r2
            com.im.freechat.shared.entities.message.Message r3 = (com.im.freechat.shared.entities.message.Message) r3
            long r4 = r3.getMessageId()
            if (r10 != 0) goto L4c
            goto L54
        L4c:
            long r6 = r10.longValue()
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L88
        L54:
            java.util.List r3 = r3.getAttachments()
            java.util.ArrayList r4 = new java.util.ArrayList
            r5 = 10
            int r5 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r3, r5)
            r4.<init>(r5)
            java.util.Iterator r3 = r3.iterator()
        L67:
            boolean r5 = r3.hasNext()
            if (r5 == 0) goto L7f
            java.lang.Object r5 = r3.next()
            com.im.freechat.shared.entities.message.Attachment r5 = (com.im.freechat.shared.entities.message.Attachment) r5
            long r5 = r5.getMediaId()
            java.lang.Long r5 = java.lang.Long.valueOf(r5)
            r4.add(r5)
            goto L67
        L7f:
            boolean r3 = kotlin.collections.CollectionsKt.contains(r4, r10)
            if (r3 == 0) goto L86
            goto L88
        L86:
            r3 = 0
            goto L89
        L88:
            r3 = 1
        L89:
            if (r3 == 0) goto L38
            r0 = r2
        L8c:
            com.im.freechat.shared.entities.message.Message r0 = (com.im.freechat.shared.entities.message.Message) r0
            if (r0 != 0) goto L91
            goto L9b
        L91:
            r9.X3(r0)
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r9 = r9.Y()
            r9.m1()
        L9b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.V2(com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment, android.view.View):void");
    }

    private final void V3() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        com.im.freechat.extend.f.j(requireActivity, b.s.f2237d9, b.s.f2280i0, false, new m0());
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void W1(com.im.freechat.shared.entities.message.Message r12) {
        /*
            r11 = this;
            boolean r0 = r11.j2()
            java.lang.String r1 = "binding.lPinnedMessage.root"
            r2 = 8
            if (r0 == 0) goto L1d
            androidx.viewbinding.ViewBinding r12 = r11.W()
            f4.i r12 = (f4.i) r12
            f4.k r12 = r12.f65566t
            androidx.constraintlayout.widget.ConstraintLayout r12 = r12.getRoot()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r1)
            r12.setVisibility(r2)
            return
        L1d:
            r0 = 0
            if (r12 == 0) goto Ldb
            androidx.viewbinding.ViewBinding r3 = r11.W()
            f4.i r3 = (f4.i) r3
            f4.k r3 = r3.f65566t
            android.widget.ImageButton r3 = r3.f65598b
            java.lang.String r4 = "binding.lPinnedMessage.btnRemovePin"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r4 = r11.Y()
            boolean r4 = r4.S0()
            r5 = 0
            if (r4 != 0) goto L59
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r4 = r11.Y()
            boolean r4 = r4.W0()
            if (r4 != 0) goto L59
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r4 = r11.Y()
            com.im.freechat.shared.entities.chat.Chat r4 = r4.s0()
            if (r4 == 0) goto L52
            com.im.freechat.shared.entities.chat.Chat$Type r0 = r4.getType()
        L52:
            com.im.freechat.shared.entities.chat.Chat$Type r4 = com.im.freechat.shared.entities.chat.Chat.Type.SINGLE
            if (r0 != r4) goto L57
            goto L59
        L57:
            r0 = 0
            goto L5a
        L59:
            r0 = 1
        L5a:
            if (r0 == 0) goto L5e
            r0 = 0
            goto L60
        L5e:
            r0 = 8
        L60:
            r3.setVisibility(r0)
            androidx.viewbinding.ViewBinding r0 = r11.W()
            f4.i r0 = (f4.i) r0
            f4.k r0 = r0.f65566t
            androidx.constraintlayout.widget.ConstraintLayout r0 = r0.getRoot()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r0.setVisibility(r5)
            androidx.viewbinding.ViewBinding r0 = r11.W()
            f4.i r0 = (f4.i) r0
            f4.k r0 = r0.f65566t
            android.widget.TextView r0 = r0.f65602f
            android.content.Context r3 = r11.requireContext()
            java.lang.String r4 = "requireContext()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            java.lang.String r3 = com.im.freechat.extend.p.d(r12, r3)
            r0.setText(r3)
            boolean r0 = com.im.freechat.extend.p.t(r12)
            java.lang.String r3 = "binding.lPinnedMessage.ivPinPreview"
            if (r0 != 0) goto Laf
            boolean r0 = com.im.freechat.extend.p.B(r12)
            if (r0 == 0) goto L9e
            goto Laf
        L9e:
            androidx.viewbinding.ViewBinding r12 = r11.W()
            f4.i r12 = (f4.i) r12
            f4.k r12 = r12.f65566t
            android.widget.ImageView r12 = r12.f65599c
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r3)
            r12.setVisibility(r2)
            goto Ld9
        Laf:
            androidx.viewbinding.ViewBinding r0 = r11.W()
            f4.i r0 = (f4.i) r0
            f4.k r0 = r0.f65566t
            android.widget.ImageView r0 = r0.f65599c
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r3)
            r0.setVisibility(r5)
            androidx.viewbinding.ViewBinding r0 = r11.W()
            f4.i r0 = (f4.i) r0
            f4.k r0 = r0.f65566t
            android.widget.ImageView r4 = r0.f65599c
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r3)
            java.lang.Object r5 = com.im.freechat.extend.p.g(r12)
            r6 = 0
            r7 = 1
            r8 = 0
            r9 = 10
            r10 = 0
            com.im.freechat.extend.m.s(r4, r5, r6, r7, r8, r9, r10)
        Ld9:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
        Ldb:
            if (r0 != 0) goto Lef
            androidx.viewbinding.ViewBinding r12 = r11.W()
            f4.i r12 = (f4.i) r12
            f4.k r12 = r12.f65566t
            androidx.constraintlayout.widget.ConstraintLayout r12 = r12.getRoot()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r1)
            r12.setVisibility(r2)
        Lef:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.W1(com.im.freechat.shared.entities.message.Message):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W2(ChatDetailsFragment this$0, View view) {
        boolean z9;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Map<Long, Boolean> value = this$0.Y().I0().getValue();
        if (value == null) {
            value = MapsKt__MapsKt.emptyMap();
        }
        List<Message> value2 = this$0.Y().E0().getValue();
        if (value2 != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : value2) {
                Message message = (Message) obj;
                boolean z10 = true;
                if (!value.containsKey(Long.valueOf(message.getMessageId()))) {
                    List<Attachment> attachments = message.getAttachments();
                    if (!(attachments instanceof Collection) || !attachments.isEmpty()) {
                        for (Attachment attachment : attachments) {
                            if (value.containsKey(Long.valueOf(attachment.getMediaId()))) {
                                z9 = true;
                                break;
                            }
                        }
                    }
                    z9 = false;
                    if (!z9) {
                        z10 = false;
                    }
                }
                if (z10) {
                    arrayList.add(obj);
                }
            }
            FragmentActivity requireActivity = this$0.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.im.freechat.extend.p.b(arrayList, requireActivity);
        }
        this$0.Y().m1();
    }

    private final void W3(String str) {
        String replace$default;
        if (str == null || str.length() == 0) {
            i2().setState(5);
            FrameLayout frameLayout = W().f65568v;
            Intrinsics.checkNotNullExpressionValue(frameLayout, "binding.mentioningContainer");
            frameLayout.setVisibility(8);
            return;
        }
        FrameLayout frameLayout2 = W().f65568v;
        Intrinsics.checkNotNullExpressionValue(frameLayout2, "binding.mentioningContainer");
        frameLayout2.setVisibility(0);
        i2().setState(4);
        replace$default = StringsKt__StringsJVMKt.replace$default(str, "@", "", false, 4, (Object) null);
        List E0 = ContactListFragment.E0(e2(), replace$default, Y().u0(), false, 4, null);
        int size = E0 != null ? E0.size() : 0;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        int n9 = com.im.freechat.extend.f.n(45, requireContext);
        i2().setPeekHeight(n9 * 2);
        W().f65568v.getLayoutParams().height = ((size * n9) * 3) / 4;
    }

    private final boolean X1() {
        f4.z1 z1Var = W().A;
        SearchView searchViewChat = z1Var.f65889j;
        Intrinsics.checkNotNullExpressionValue(searchViewChat, "searchViewChat");
        boolean z9 = searchViewChat.getVisibility() == 0;
        z1Var.f65889j.setQuery("", false);
        SearchView searchViewChat2 = z1Var.f65889j;
        Intrinsics.checkNotNullExpressionValue(searchViewChat2, "searchViewChat");
        searchViewChat2.setVisibility(8);
        M3();
        return z9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X2(ChatDetailsFragment this$0, View view) {
        Set<Long> keySet;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Map<Long, Boolean> value = this$0.Y().I0().getValue();
        List<Long> list = (value == null || (keySet = value.keySet()) == null) ? null : CollectionsKt___CollectionsKt.toList(keySet);
        Intrinsics.checkNotNull(list);
        this$0.Z1(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X3(Message message) {
        MutableLiveData<String> N0 = Y().N0();
        String content = message.getContent();
        if (content == null) {
            content = "";
        }
        N0.setValue(content);
        Y().y0().setValue(new z1(message, Message.ExtraMessageType.EDIT, null, null, 12, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y1(Long l10) {
        List<com.im.freechat.ui.chat.chatdetails.messagelist.d> currentList = a2().getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "adapter.currentList");
        Iterator<com.im.freechat.ui.chat.chatdetails.messagelist.d> it = currentList.iterator();
        int i4 = 0;
        while (true) {
            if (!it.hasNext()) {
                i4 = -1;
                break;
            }
            if (l10 != null && it.next().i().getMessageId() == l10.longValue()) {
                break;
            }
            i4++;
        }
        if (i4 == -1) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = W().f65557k.getLayoutManager();
        Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        if (!(linearLayoutManager.findFirstCompletelyVisibleItemPosition() <= i4 && i4 <= linearLayoutManager.findLastCompletelyVisibleItemPosition())) {
            W().f65557k.addOnScrollListener(new i(i4));
            W().f65557k.smoothScrollToPosition(i4);
            return;
        }
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = W().f65557k.findViewHolderForAdapterPosition(i4);
        BaseChatHolder baseChatHolder = findViewHolderForAdapterPosition instanceof BaseChatHolder ? (BaseChatHolder) findViewHolderForAdapterPosition : null;
        if (baseChatHolder != null) {
            BaseChatHolder.a0(baseChatHolder, false, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        com.im.freechat.extend.f.j(requireActivity, b.s.f2237d9, b.s.f2280i0, false, new c0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y3(ChatDetailsFragment this$0, Boolean bool) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (bool.booleanValue()) {
            Uri uri = this$0.f42311r;
            if (uri != null) {
                if (this$0.j2()) {
                    this$0.Y().a1(uri);
                } else {
                    ChosenAttachment Q1 = this$0.Y().Q1(this$0.f42311r);
                    if (Q1 != null) {
                        this$0.N3(Q1);
                    }
                }
            }
            this$0.f42311r = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z1(List<Long> list) {
        long[] longArray;
        setHasOptionsMenu(false);
        ChatDetailsViewModel.Directions directions = ChatDetailsViewModel.Directions.NAVIGATE_SELECT_CHAT;
        longArray = CollectionsKt___CollectionsKt.toLongArray(list);
        c0(directions, BundleKt.bundleOf(TuplesKt.to(k4.b.f84737d, longArray), TuplesKt.to(k4.b.f84734a, Integer.valueOf(d2()))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z2(ChatDetailsFragment this$0, View view) {
        List<? extends Attachment> emptyList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Map<Long, Boolean> value = this$0.Y().I0().getValue();
        if (value == null) {
            value = MapsKt__MapsKt.emptyMap();
        }
        List<Message> value2 = this$0.Y().E0().getValue();
        if (value2 != null) {
            ArrayList arrayList = new ArrayList();
            for (Message message : value2) {
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, message.getAttachments());
            }
            emptyList = new ArrayList<>();
            for (Object obj : arrayList) {
                Attachment attachment = (Attachment) obj;
                if (value.containsKey(Long.valueOf(attachment.getMediaId())) || value.containsKey(Long.valueOf(attachment.getMessageId()))) {
                    emptyList.add(obj);
                }
            }
        } else {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        this$0.Y().o1(emptyList);
        this$0.Y().m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z3() {
        new AlertDialog.Builder(requireContext()).setTitle(b.s.V0).setMessage(b.s.W0).setPositiveButton(b.s.X1, new DialogInterface.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.w
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                ChatDetailsFragment.a4(ChatDetailsFragment.this, dialogInterface, i4);
            }
        }).setNegativeButton(b.s.I2, s0.f42661a).show();
    }

    private final com.im.freechat.ui.chat.chatdetails.messagelist.b a2() {
        return (com.im.freechat.ui.chat.chatdetails.messagelist.b) this.f42300g.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0014, code lost:
        r2 = kotlin.collections.ArraysKt___ArraysKt.toList(r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void a3() {
        /*
            r6 = this;
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r0 = r6.Y()
            int r1 = r6.d2()
            android.os.Bundle r2 = r6.requireArguments()
            java.lang.String r3 = "forwardedMessageIds"
            long[] r2 = r2.getLongArray(r3)
            if (r2 == 0) goto L1a
            java.util.List r2 = kotlin.collections.ArraysKt.toList(r2)
            if (r2 != 0) goto L1e
        L1a:
            java.util.List r2 = kotlin.collections.CollectionsKt.emptyList()
        L1e:
            long r4 = r6.l2()
            r0.T0(r1, r2, r4)
            android.os.Bundle r0 = r6.requireArguments()
            r0.remove(r3)
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r0 = r6.Y()
            androidx.lifecycle.LiveData r0 = r0.R0()
            androidx.lifecycle.LifecycleOwner r1 = r6.getViewLifecycleOwner()
            com.im.freechat.ui.chat.chatdetails.u0 r2 = new com.im.freechat.ui.chat.chatdetails.u0
            r2.<init>()
            r0.observe(r1, r2)
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r0 = r6.Y()
            androidx.lifecycle.MutableLiveData r0 = r0.F0()
            androidx.lifecycle.LifecycleOwner r1 = r6.getViewLifecycleOwner()
            com.im.freechat.ui.chat.chatdetails.n0 r2 = new com.im.freechat.ui.chat.chatdetails.n0
            r2.<init>()
            r0.observe(r1, r2)
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r0 = r6.Y()
            androidx.lifecycle.LiveData r0 = r0.G0()
            androidx.lifecycle.LifecycleOwner r1 = r6.getViewLifecycleOwner()
            androidx.lifecycle.Observer<java.util.List<com.im.freechat.shared.entities.message.Message>> r2 = r6.C
            r0.observe(r1, r2)
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r0 = r6.Y()
            androidx.lifecycle.LiveData r0 = r0.A0()
            androidx.lifecycle.LifecycleOwner r1 = r6.getViewLifecycleOwner()
            com.im.freechat.ui.chat.chatdetails.t0 r2 = new com.im.freechat.ui.chat.chatdetails.t0
            r2.<init>()
            r0.observe(r1, r2)
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r0 = r6.Y()
            androidx.lifecycle.LiveData r0 = r0.v0()
            androidx.lifecycle.LifecycleOwner r1 = r6.getViewLifecycleOwner()
            com.im.freechat.ui.chat.chatdetails.v0 r2 = new com.im.freechat.ui.chat.chatdetails.v0
            r2.<init>()
            r0.observe(r1, r2)
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r0 = r6.Y()
            androidx.lifecycle.MutableLiveData r0 = r0.t0()
            androidx.lifecycle.LifecycleOwner r1 = r6.getViewLifecycleOwner()
            com.im.freechat.ui.chat.chatdetails.l0 r2 = new com.im.freechat.ui.chat.chatdetails.l0
            r2.<init>()
            r0.observe(r1, r2)
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r0 = r6.Y()
            androidx.lifecycle.LiveData r0 = r0.r0()
            androidx.lifecycle.LifecycleOwner r1 = r6.getViewLifecycleOwner()
            com.im.freechat.ui.chat.chatdetails.q0 r2 = new com.im.freechat.ui.chat.chatdetails.q0
            r2.<init>()
            r0.observe(r1, r2)
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r0 = r6.Y()
            androidx.lifecycle.MutableLiveData r0 = r0.y0()
            androidx.lifecycle.LifecycleOwner r1 = r6.getViewLifecycleOwner()
            com.im.freechat.ui.chat.chatdetails.o0 r2 = new com.im.freechat.ui.chat.chatdetails.o0
            r2.<init>()
            r0.observe(r1, r2)
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r0 = r6.Y()
            androidx.lifecycle.LiveData r0 = r0.D0()
            androidx.lifecycle.LiveData r0 = androidx.lifecycle.Transformations.distinctUntilChanged(r0)
            java.lang.String r1 = "distinctUntilChanged(this)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            androidx.lifecycle.LifecycleOwner r1 = r6.getViewLifecycleOwner()
            com.im.freechat.ui.chat.chatdetails.x0 r2 = new com.im.freechat.ui.chat.chatdetails.x0
            r2.<init>()
            r0.observe(r1, r2)
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r0 = r6.Y()
            androidx.lifecycle.MutableLiveData r0 = r0.B0()
            androidx.lifecycle.LifecycleOwner r1 = r6.getViewLifecycleOwner()
            com.im.freechat.ui.chat.chatdetails.r0 r2 = new com.im.freechat.ui.chat.chatdetails.r0
            r2.<init>()
            r0.observe(r1, r2)
            com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel r0 = r6.Y()
            androidx.lifecycle.MutableLiveData r0 = r0.N0()
            androidx.lifecycle.LifecycleOwner r1 = r6.getViewLifecycleOwner()
            com.im.freechat.ui.chat.chatdetails.w0 r2 = new com.im.freechat.ui.chat.chatdetails.w0
            r2.<init>()
            r0.observe(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.a3():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a4(ChatDetailsFragment this$0, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Y().N1();
    }

    private final l4.e b2() {
        return (l4.e) this.f42307n.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b3(ChatDetailsFragment this$0, Integer num) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.W().f65567u.setUnreadMessageCount(num.intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b4(DialogInterface dialogInterface, int i4) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CameraRecorder c2() {
        return (CameraRecorder) this.f42296c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c3(ChatDetailsFragment this$0, Message message) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.W1(message);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void c4(com.im.freechat.shared.entities.chat.Chat r8) {
        /*
            r7 = this;
            androidx.viewbinding.ViewBinding r0 = r7.W()
            f4.i r0 = (f4.i) r0
            f4.z1 r0 = r0.A
            boolean r1 = com.im.freechat.extend.g.e(r8)
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L1b
            android.content.Context r1 = r7.requireContext()
            int r4 = b4.b.s.P8
            java.lang.String r1 = r1.getString(r4)
            goto L50
        L1b:
            boolean r1 = com.im.freechat.extend.g.b(r8)
            if (r1 == 0) goto L2c
            android.content.Context r1 = r7.requireContext()
            int r4 = b4.b.s.J4
            java.lang.String r1 = r1.getString(r4)
            goto L50
        L2c:
            java.lang.String r1 = r8.getTitle()
            if (r1 == 0) goto L3b
            boolean r1 = kotlin.text.StringsKt.isBlank(r1)
            if (r1 == 0) goto L39
            goto L3b
        L39:
            r1 = 0
            goto L3c
        L3b:
            r1 = 1
        L3c:
            if (r1 == 0) goto L49
            android.content.Context r1 = r7.requireContext()
            int r4 = b4.b.s.F9
            java.lang.String r1 = r1.getString(r4)
            goto L50
        L49:
            java.lang.String r1 = r8.getTitle()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
        L50:
            java.lang.String r4 = "when {\n                c…hat.title!!\n            }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r4)
            android.widget.TextView r4 = r0.f65893n
            char r5 = kotlin.text.StringsKt.first(r1)
            java.lang.String r5 = java.lang.String.valueOf(r5)
            r4.setText(r5)
            android.widget.TextView r4 = r0.f65893n
            java.lang.String r5 = "tvToolbarAvatar"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
            java.lang.String r6 = r8.getTitle()
            com.im.freechat.utils.v.a(r4, r6)
            android.widget.TextView r4 = r0.f65893n
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
            r4.setVisibility(r3)
            android.widget.ImageView r4 = r0.f65887h
            java.lang.String r5 = "ivToolbarAvatar"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
            java.lang.String r8 = r8.getAvatar()
            com.im.freechat.extend.m.o(r4, r8)
            android.widget.TextView r8 = r0.f65894o
            java.lang.String r4 = "tvToolbarTitle"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r4)
            r8.setVisibility(r3)
            android.widget.TextView r8 = r0.f65894o
            r8.setText(r1)
            r7.setHasOptionsMenu(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.c4(com.im.freechat.shared.entities.chat.Chat):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int d2() {
        return ((Number) this.f42299f.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d3(ChatDetailsFragment this$0, Integer num) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.U1();
    }

    private final void d4(final List<com.im.freechat.ui.chat.chatdetails.messagelist.d> list) {
        com.im.freechat.ui.chat.chatdetails.messagelist.d dVar;
        boolean z9;
        a2().C(Y().V0());
        a2().z(Y().U0());
        final int size = a2().getCurrentList().size();
        TextView textView = W().f65560n;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.emptyChatText");
        textView.setVisibility(list == null || list.isEmpty() ? 0 : 8);
        a2().submitList(list, new Runnable() { // from class: com.im.freechat.ui.chat.chatdetails.e1
            @Override // java.lang.Runnable
            public final void run() {
                ChatDetailsFragment.e4(ChatDetailsFragment.this, size, list);
            }
        });
        if (list.isEmpty()) {
            return;
        }
        if (this.f42303j != 0) {
            ListIterator<com.im.freechat.ui.chat.chatdetails.messagelist.d> listIterator = list.listIterator(list.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    dVar = null;
                    break;
                }
                dVar = listIterator.previous();
                if (dVar.i().getMessageId() == this.f42303j) {
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
            final com.im.freechat.ui.chat.chatdetails.messagelist.d dVar2 = dVar;
            if (dVar2 != null) {
                W().getRoot().postDelayed(new Runnable() { // from class: com.im.freechat.ui.chat.chatdetails.g1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatDetailsFragment.f4(ChatDetailsFragment.this, dVar2);
                    }
                }, 300L);
                this.f42303j = 0L;
            }
        } else if (this.f42304k != 0) {
            W().getRoot().postDelayed(new Runnable() { // from class: com.im.freechat.ui.chat.chatdetails.b1
                @Override // java.lang.Runnable
                public final void run() {
                    ChatDetailsFragment.g4(ChatDetailsFragment.this);
                }
            }, 300L);
            this.f42304k = 0L;
        }
    }

    private final ContactListFragment e2() {
        return (ContactListFragment) this.f42301h.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e3(ChatDetailsFragment this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        f4.z1 z1Var = this$0.W().A;
        TextView tvTyping = z1Var.f65895p;
        Intrinsics.checkNotNullExpressionValue(tvTyping, "tvTyping");
        boolean z9 = true;
        tvTyping.setVisibility((str == null || str.length() == 0) ^ true ? 0 : 8);
        if (str == null || str.length() == 0) {
            return;
        }
        z1Var.f65895p.setText(str);
        List<Integer> value = this$0.Y().P0().getValue();
        if (value != null && !value.isEmpty()) {
            z9 = false;
        }
        if (!z9) {
            TextView tvTyping2 = z1Var.f65895p;
            Intrinsics.checkNotNullExpressionValue(tvTyping2, "tvTyping");
            com.im.freechat.utils.v.d(tvTyping2, Integer.valueOf(b.h.f1712y6), true, false, false, false, 28, null);
            return;
        }
        TextView tvTyping3 = z1Var.f65895p;
        Intrinsics.checkNotNullExpressionValue(tvTyping3, "tvTyping");
        com.im.freechat.utils.v.d(tvTyping3, 0, false, false, false, false, 30, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e4(ChatDetailsFragment this$0, int i4, List it) {
        int i10;
        boolean z9;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "$it");
        if (this$0.X() == null) {
            return;
        }
        if (this$0.f42295b && i4 != 0) {
            RecyclerView.LayoutManager layoutManager = this$0.W().f65557k.getLayoutManager();
            Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            ((LinearLayoutManager) layoutManager).scrollToPositionWithOffset(0, 100);
            return;
        }
        ListIterator listIterator = it.listIterator(it.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                i10 = -1;
                break;
            }
            com.im.freechat.ui.chat.chatdetails.messagelist.d dVar = (com.im.freechat.ui.chat.chatdetails.messagelist.d) listIterator.previous();
            if (dVar.i().getMessageStatus() == Message.MessageStatus.HAVE_READ || dVar.i().getSender().isCurrentUser()) {
                z9 = false;
                continue;
            } else {
                z9 = true;
                continue;
            }
            if (z9) {
                i10 = listIterator.nextIndex();
                break;
            }
        }
        if (i10 == -1) {
            i10 = 0;
        }
        if (i4 == 0) {
            this$0.W().f65557k.scrollToPosition(i10);
            if (i10 > 0) {
                this$0.f42295b = false;
            }
        }
    }

    private final int f2() {
        return ((Number) this.f42297d.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f3(ChatDetailsFragment this$0, Chat chat) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (chat == null) {
            return;
        }
        if (this$0.Y().N0().getValue() == null) {
            ChatDetailsViewModel Y = this$0.Y();
            String draftMessage = chat.getDraftMessage();
            Y.C1(draftMessage != null ? draftMessage.length() : 0);
            this$0.Y().N0().setValue(chat.getDraftMessage());
        }
        if (!com.im.freechat.extend.g.a(chat)) {
            ConstraintLayout root = this$0.W().f65550d.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "binding.bottomLayout.root");
            root.setVisibility(0);
        }
        if (com.im.freechat.extend.g.a(chat)) {
            this$0.W().f65558l.setBackgroundResource(b.h.J0);
        }
        this$0.c4(chat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f4(ChatDetailsFragment this$0, com.im.freechat.ui.chat.chatdetails.messagelist.d dVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.q2(dVar.i(), 1);
    }

    private final io.github.rockerhieu.emojicon.f g2() {
        io.github.rockerhieu.emojicon.f Y = io.github.rockerhieu.emojicon.f.Y(true);
        Intrinsics.checkNotNullExpressionValue(Y, "newInstance(true)");
        return Y;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g3(ChatDetailsFragment this$0, Boolean bool) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.l3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g4(ChatDetailsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Y1(Long.valueOf(this$0.f42304k));
    }

    private final GiphyDialogFragment h2() {
        GiphyDialogFragment f10 = GiphyDialogFragment.a.f(GiphyDialogFragment.f19039x2, new GPHSettings(GridType.waterfall, GPHTheme.Light, new GPHContentType[]{GPHContentType.emoji, GPHContentType.gif, GPHContentType.recents}, false, false, null, null, null, null, false, 0, null, false, false, false, false, null, 131064, null), null, null, null, 14, null);
        f10.R1(new j());
        return f10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h3(ChatDetailsFragment this$0, z1 z1Var) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.V1(z1Var);
        this$0.j4();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void h4(java.util.Map<java.lang.Long, java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.h4(java.util.Map):void");
    }

    private final BottomSheetBehavior<FrameLayout> i2() {
        return (BottomSheetBehavior) this.f42302i.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i3(ChatDetailsFragment this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.W3(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i4(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.v3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean j2() {
        return ((Boolean) this.f42306m.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j3(ChatDetailsFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FrameLayout frameLayout = this$0.W().f65562p;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "binding.flLoading");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        frameLayout.setVisibility(it.booleanValue() ? 0 : 8);
        this$0.setHasOptionsMenu(!it.booleanValue());
    }

    /* JADX WARN: Code restructure failed: missing block: B:149:0x024f, code lost:
        if (((r4 == null || (r1 = r4.i()) == null || !com.im.freechat.extend.p.B(r1)) ? false : true) != false) goto L128;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0172  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void j4() {
        /*
            Method dump skipped, instructions count: 604
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.chatdetails.ChatDetailsFragment.j4():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k3(ChatDetailsFragment this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.j4();
        if (Intrinsics.areEqual(str, this$0.W().f65550d.f65816l.getText().toString())) {
            return;
        }
        this$0.W().f65550d.f65816l.setText(str);
        if (this$0.Y().J0() > (str != null ? str.length() : 0)) {
            this$0.Y().C1(0);
        }
        this$0.W().f65550d.f65816l.setSelection(this$0.Y().J0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long l2() {
        return ((Number) this.f42305l.getValue()).longValue();
    }

    private final void l3() {
        requireActivity().invalidateOptionsMenu();
    }

    private final void m3() {
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = Y().z0();
        W().f65561o.getLayoutParams().height = intRef.element;
        ViewCompat.setOnApplyWindowInsetsListener(W().getRoot(), new OnApplyWindowInsetsListener() { // from class: com.im.freechat.ui.chat.chatdetails.k0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat n32;
                n32 = ChatDetailsFragment.n3(Ref.IntRef.this, this, view, windowInsetsCompat);
                return n32;
            }
        });
        ViewCompat.setWindowInsetsAnimationCallback(W().getRoot(), new b());
    }

    private final void n2() {
        final FrameLayout frameLayout = W().f65561o;
        frameLayout.animate().translationY(frameLayout.getHeight()).setDuration(200L).setInterpolator(new AccelerateDecelerateInterpolator()).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.im.freechat.ui.chat.chatdetails.l
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ChatDetailsFragment.o2(ChatDetailsFragment.this, frameLayout, valueAnimator);
            }
        }).setListener(new k(frameLayout));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat n3(Ref.IntRef lastHeight, ChatDetailsFragment this$0, View view, WindowInsetsCompat windowInsetsCompat) {
        Intrinsics.checkNotNullParameter(lastHeight, "$lastHeight");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int i4 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime()).bottom - windowInsetsCompat.getInsets(WindowInsetsCompat.Type.navigationBars()).bottom;
        if (i4 > 0) {
            if (i4 != lastHeight.element) {
                lastHeight.element = i4;
                this$0.Y().B1(lastHeight.element);
                this$0.W().f65561o.getLayoutParams().height = lastHeight.element;
            }
        } else if (this$0.f42309p == BottomVisibilityState.KEYBOARD_SHOWING) {
            this$0.U3(BottomVisibilityState.NONE);
        }
        return ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o2(ChatDetailsFragment this$0, FrameLayout this_apply, ValueAnimator valueAnimator) {
        ConstraintLayout constraintLayout;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        f4.i X = this$0.X();
        if (X == null || (constraintLayout = X.f65558l) == null) {
            return;
        }
        constraintLayout.setPadding(0, 0, 0, (int) (this_apply.getHeight() - this_apply.getTranslationY()));
    }

    private final void p2(long j4) {
        Y1(Long.valueOf(j4));
    }

    private final void q2(Message message, int i4) {
        p2(message.getMessageId());
        W().C.setText(getString(b.s.O8, Integer.valueOf(this.E + 1), Integer.valueOf(i4)));
        ImageView imageView = W().f65565s;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivSearchUp");
        imageView.setVisibility(0);
        ImageView imageView2 = W().f65564r;
        Intrinsics.checkNotNullExpressionValue(imageView2, "binding.ivSearchDown");
        imageView2.setVisibility(0);
    }

    private final void q3(@IntRange(from = -1, to = 1) int i4) {
        Message message;
        List<Message> value = Y().G0().getValue();
        if (value == null) {
            value = CollectionsKt__CollectionsKt.emptyList();
        }
        int i10 = this.E + i4;
        this.E = i10;
        if (i10 == -1) {
            this.E = value.size() - 1;
        }
        if (this.E == value.size()) {
            this.E = 0;
        }
        List<Message> value2 = Y().G0().getValue();
        if (value2 == null || (message = value2.get(this.E)) == null) {
            return;
        }
        List<Message> value3 = Y().G0().getValue();
        q2(message, value3 != null ? value3.size() : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r2(ChatDetailsFragment this$0, Intent intent) {
        File c10;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (intent == null || intent.getBooleanExtra(com.tangxiaolv.telegramgallery.i.f56722a, false)) {
            return;
        }
        String stringExtra = intent.getStringExtra(intent.getBooleanExtra(EditImageActivity.K, false) ? iamutkarshtiwari.github.io.ananas.editimage.p.f69658p : iamutkarshtiwari.github.io.ananas.editimage.p.f69657o);
        if (stringExtra == null || (c10 = com.im.freechat.extend.r.c(stringExtra)) == null) {
            return;
        }
        Uri fromFile = Uri.fromFile(c10);
        Intrinsics.checkNotNullExpressionValue(fromFile, "fromFile(this)");
        if (fromFile != null) {
            this$0.t3(fromFile);
        }
    }

    private final void r3() {
        FrameLayout frameLayout = W().f65561o;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "binding.flEmojiAndMore");
        Window window = requireActivity().getWindow();
        Intrinsics.checkNotNullExpressionValue(window, "requireActivity().window");
        com.im.freechat.extend.f.w(frameLayout, window);
        requireActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s2(ChatDetailsFragment this$0, CameraRecorder.State state) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        f4.i W = this$0.W();
        int i4 = state == null ? -1 : c.$EnumSwitchMapping$1[state.ordinal()];
        if (i4 == 1) {
            PlayerView playerView = W.f65571y;
            Intrinsics.checkNotNullExpressionValue(playerView, "playerView");
            playerView.setVisibility(0);
            ConstraintLayout cameraPreviewContainer = W.f65556j;
            Intrinsics.checkNotNullExpressionValue(cameraPreviewContainer, "cameraPreviewContainer");
            cameraPreviewContainer.setVisibility(8);
        } else if (i4 == 2) {
            ConstraintLayout cameraPreviewContainer2 = W.f65556j;
            Intrinsics.checkNotNullExpressionValue(cameraPreviewContainer2, "cameraPreviewContainer");
            cameraPreviewContainer2.setVisibility(0);
            PlayerView playerView2 = W.f65571y;
            Intrinsics.checkNotNullExpressionValue(playerView2, "playerView");
            playerView2.setVisibility(8);
        } else if (i4 == 3) {
            PlayerView playerView3 = W.f65571y;
            Intrinsics.checkNotNullExpressionValue(playerView3, "playerView");
            playerView3.setVisibility(8);
            ConstraintLayout cameraPreviewContainer3 = W.f65556j;
            Intrinsics.checkNotNullExpressionValue(cameraPreviewContainer3, "cameraPreviewContainer");
            cameraPreviewContainer3.setVisibility(0);
            ImageView btnRecordVideo = W.f65552f;
            Intrinsics.checkNotNullExpressionValue(btnRecordVideo, "btnRecordVideo");
            btnRecordVideo.setVisibility(0);
            ImageView btnRotateCamera = W.f65553g;
            Intrinsics.checkNotNullExpressionValue(btnRotateCamera, "btnRotateCamera");
            btnRotateCamera.setVisibility(0);
            ImageView btnSendVideo = W.f65554h;
            Intrinsics.checkNotNullExpressionValue(btnSendVideo, "btnSendVideo");
            btnSendVideo.setVisibility(8);
        } else if (i4 != 4) {
        } else {
            PlayerView playerView4 = W.f65571y;
            Intrinsics.checkNotNullExpressionValue(playerView4, "playerView");
            playerView4.setVisibility(8);
            ConstraintLayout cameraPreviewContainer4 = W.f65556j;
            Intrinsics.checkNotNullExpressionValue(cameraPreviewContainer4, "cameraPreviewContainer");
            cameraPreviewContainer4.setVisibility(0);
            ImageView btnRecordVideo2 = W.f65552f;
            Intrinsics.checkNotNullExpressionValue(btnRecordVideo2, "btnRecordVideo");
            btnRecordVideo2.setVisibility(8);
            ImageView btnRotateCamera2 = W.f65553g;
            Intrinsics.checkNotNullExpressionValue(btnRotateCamera2, "btnRotateCamera");
            btnRotateCamera2.setVisibility(8);
            ImageView btnSendVideo2 = W.f65554h;
            Intrinsics.checkNotNullExpressionValue(btnSendVideo2, "btnSendVideo");
            btnSendVideo2.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean s3() {
        List<Uri> emptyList;
        BottomVisibilityState bottomVisibilityState = this.f42309p;
        BottomVisibilityState bottomVisibilityState2 = BottomVisibilityState.NONE;
        if (bottomVisibilityState != bottomVisibilityState2 && !j2()) {
            U3(bottomVisibilityState2);
            return true;
        } else if (Y().q0().getValue() != null) {
            MutableLiveData<List<Uri>> C0 = Y().C0();
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            C0.setValue(emptyList);
            return true;
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c2().p();
    }

    private final void t3(Uri uri) {
        Y().a1(uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c2().A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u3(List<String> list) {
        com.im.freechat.utils.r rVar = com.im.freechat.utils.r.f43826a;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        rVar.n(requireActivity, list, new g0(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c2().A();
    }

    private final void v3() {
        Map<Long, Boolean> value = Y().I0().getValue();
        boolean z9 = false;
        if (value != null && (!value.isEmpty())) {
            z9 = true;
        }
        if (z9) {
            Y().m1();
        } else if (s3() || X1()) {
        } else {
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
            ((AppCompatActivity) requireActivity).onSupportNavigateUp();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c2().s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w3(Attachment attachment) {
        boolean equals;
        if (attachment instanceof ImageAttachment) {
            ActivityResultLauncher<Intent> activityResultLauncher = this.B;
            a.C0354a c0354a = com.im.freechat.ui.chat.message_gallery.a.f43137a;
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            activityResultLauncher.launch(c0354a.a(requireContext, d2(), attachment.getMediaId()));
        } else if (attachment instanceof AudioAttachment) {
            ChatDetailsViewModel.i1(Y(), attachment.getMediaId(), 0L, false, 6, null);
        } else if (attachment instanceof FileAttachment) {
            FileAttachment fileAttachment = (FileAttachment) attachment;
            equals = StringsKt__StringsJVMKt.equals(fileAttachment.getMimeType(), "gif", true);
            if (equals) {
                ActivityResultLauncher<Intent> activityResultLauncher2 = this.B;
                a.C0354a c0354a2 = com.im.freechat.ui.chat.message_gallery.a.f43137a;
                Context requireContext2 = requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext()");
                activityResultLauncher2.launch(c0354a2.a(requireContext2, d2(), attachment.getMediaId()));
                return;
            }
            Y().J1(fileAttachment);
        } else if (attachment instanceof VideoAttachment) {
            L3(new a.e((VideoAttachment) attachment));
        } else if (attachment instanceof GifAttachment) {
            ActivityResultLauncher<Intent> activityResultLauncher3 = this.B;
            a.C0354a c0354a3 = com.im.freechat.ui.chat.message_gallery.a.f43137a;
            Context requireContext3 = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext3, "requireContext()");
            activityResultLauncher3.launch(c0354a3.a(requireContext3, d2(), attachment.getMediaId()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c2().B(new y());
    }

    private final void x3(String str, String str2) {
        FragmentActivity requireActivity = requireActivity();
        Uri uriForFile = FileProvider.getUriForFile(requireActivity, requireActivity().getPackageName() + ".provider", new File(str));
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(uriForFile, str2);
        intent.addFlags(1);
        intent.addFlags(2);
        if (intent.resolveActivity(requireActivity.getPackageManager()) != null) {
            requireActivity.startActivity(intent);
            return;
        }
        Intrinsics.checkNotNullExpressionValue(requireActivity, "");
        com.im.freechat.extend.f.z(requireActivity, b.s.f2287i8);
    }

    public static final /* synthetic */ f4.i y1(ChatDetailsFragment chatDetailsFragment) {
        return chatDetailsFragment.W();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.q3(1);
    }

    private final void y3(long j4) {
        ActivityResultLauncher<Intent> activityResultLauncher = this.B;
        a.C0354a c0354a = com.im.freechat.ui.chat.message_gallery.a.f43137a;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        activityResultLauncher.launch(c0354a.a(requireContext, d2(), j4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z2(ChatDetailsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.q3(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z3(ChatDetailsFragment this$0, Bundle bundle) {
        List<Long> list;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (bundle == null) {
            return;
        }
        long j4 = bundle.getLong(k4.b.f84736c, 0L);
        long[] longArray = bundle.getLongArray(k4.b.f84737d);
        if (j4 != 0) {
            this$0.Y1(Long.valueOf(j4));
        } else if (longArray != null) {
            list = ArraysKt___ArraysKt.toList(longArray);
            this$0.Z1(list);
        }
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: J3 */
    public f4.i g0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        f4.i d4 = f4.i.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    public final void L3(@m8.h a aVar) {
        String[] strArr;
        List<String> a10;
        if (aVar != null) {
            this.f42312s = aVar;
        }
        a aVar2 = this.f42312s;
        if (aVar2 == null || (a10 = aVar2.a()) == null) {
            strArr = null;
        } else {
            Object[] array = a10.toArray(new String[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            strArr = (String[]) array;
        }
        this.f42313t.launch(strArr);
    }

    public final void Q3(boolean z9) {
        this.D = z9;
    }

    public final void U3(@m8.g BottomVisibilityState bottomVisibilityState) {
        Intrinsics.checkNotNullParameter(bottomVisibilityState, "bottomVisibilityState");
        int i4 = c.$EnumSwitchMapping$4[bottomVisibilityState.ordinal()];
        if (i4 == 2) {
            FrameLayout frameLayout = W().f65561o;
            Intrinsics.checkNotNullExpressionValue(frameLayout, "binding.flEmojiAndMore");
            frameLayout.setVisibility(8);
            W().f65558l.setPadding(0, 0, 0, 0);
        } else if (i4 != 3) {
            if (i4 != 4) {
                if (i4 == 5) {
                    h2().show(getChildFragmentManager(), (String) null);
                    n2();
                } else if (i4 == 6) {
                    n2();
                    FrameLayout frameLayout2 = W().f65561o;
                    Intrinsics.checkNotNullExpressionValue(frameLayout2, "binding.flEmojiAndMore");
                    Window window = requireActivity().getWindow();
                    Intrinsics.checkNotNullExpressionValue(window, "requireActivity().window");
                    com.im.freechat.extend.f.w(frameLayout2, window);
                }
            } else if (this.f42309p == BottomVisibilityState.KEYBOARD_REQUEST) {
                return;
            } else {
                R3(g2());
            }
        } else if (this.f42309p == BottomVisibilityState.KEYBOARD_REQUEST) {
            return;
        } else {
            R3(b2());
        }
        P3(bottomVisibilityState);
    }

    @Override // com.im.freechat.base.f
    protected void Z() {
        com.giphy.sdk.ui.l lVar = com.giphy.sdk.ui.l.f17075f;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        com.giphy.sdk.ui.l.i(lVar, requireContext, "tDiJym4rsyJALjtEp6MM1k9cl9rHv42f", false, 0L, null, null, 60, null);
        this.f42303j = requireArguments().getLong(k4.b.f84735b, 0L);
        this.f42304k = requireArguments().getLong(k4.b.f84736c, 0L);
        m3();
        CameraRecorder c22 = c2();
        CardView cardView = W().f65555i;
        Intrinsics.checkNotNullExpressionValue(cardView, "binding.cameraCont");
        c22.m(cardView);
        c2().l().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.chatdetails.p0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatDetailsFragment.s2(ChatDetailsFragment.this, (CameraRecorder.State) obj);
            }
        });
        W().f65552f.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.t2(ChatDetailsFragment.this, view);
            }
        });
        W().f65551e.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.u2(ChatDetailsFragment.this, view);
            }
        });
        W().f65556j.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.v2(ChatDetailsFragment.this, view);
            }
        });
        W().f65553g.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.w2(ChatDetailsFragment.this, view);
            }
        });
        W().f65554h.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.x2(ChatDetailsFragment.this, view);
            }
        });
        W().f65565s.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.j1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.y2(ChatDetailsFragment.this, view);
            }
        });
        W().f65564r.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.z2(ChatDetailsFragment.this, view);
            }
        });
        W().f65563q.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.A2(ChatDetailsFragment.this, view);
            }
        });
        Y().x0().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.chat.chatdetails.y0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatDetailsFragment.B2(ChatDetailsFragment.this, (List) obj);
            }
        });
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        AppCompatActivity appCompatActivity = (AppCompatActivity) requireActivity;
        ActionBar supportActionBar = appCompatActivity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowTitleEnabled(false);
        }
        ActionBar supportActionBar2 = appCompatActivity.getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.setDisplayHomeAsUpEnabled(true);
        }
        f4.k kVar = W().f65566t;
        kVar.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.C2(ChatDetailsFragment.this, view);
            }
        });
        kVar.f65598b.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatDetailsFragment.D2(ChatDetailsFragment.this, view);
            }
        });
        final RecyclerView recyclerView = W().f65557k;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(recyclerView.getContext(), 1, true);
        linearLayoutManager.setStackFromEnd(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setAdapter(a2());
        RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
        Intrinsics.checkNotNull(itemAnimator, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
        ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        recyclerView.addOnScrollListener(new l(recyclerView));
        recyclerView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.im.freechat.ui.chat.chatdetails.b0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
                ChatDetailsFragment.E2(ChatDetailsFragment.this, recyclerView, view, i4, i10, i11, i12, i13, i14, i15, i16);
            }
        });
        W().f65567u.setDownClickCallback(new m());
        com.im.freechat.ui.chat.chatdetails.messagelist.b a22 = a2();
        a22.A(new p());
        a22.E(new q());
        a22.G(new r());
        a22.H(new s());
        a22.D(new t());
        a22.x(new u());
        a22.y(new v());
        a22.F(new w());
        a22.B(new x());
        a22.w(new n());
        a22.J(new o());
        F2();
        T2();
        a3();
        getChildFragmentManager().beginTransaction().replace(b.j.oa, e2()).commitNow();
    }

    @Override // io.github.rockerhieu.emojicon.c.a
    public void i(@m8.h Emojicon emojicon) {
        io.github.rockerhieu.emojicon.f.X(W().f65550d.f65816l, emojicon);
    }

    public final boolean k2() {
        return this.D;
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: m2 */
    public ChatDetailsViewModel Y() {
        return (ChatDetailsViewModel) this.f42298e.getValue();
    }

    public final void o3() {
        if (this.D) {
            W().f65549c.f(false);
            W().f65549c.e();
            ChatDetailsAudioRecordLayout chatDetailsAudioRecordLayout = W().f65549c;
            Intrinsics.checkNotNullExpressionValue(chatDetailsAudioRecordLayout, "binding.audioRecordLayout");
            chatDetailsAudioRecordLayout.setVisibility(8);
            this.D = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(@m8.g Menu menu, @m8.g MenuInflater inflater) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        if (Y().s0() == null) {
            super.onCreateOptionsMenu(menu, inflater);
            return;
        }
        Chat s02 = Y().s0();
        Intrinsics.checkNotNull(s02);
        if (com.im.freechat.extend.g.e(s02)) {
            super.onCreateOptionsMenu(menu, inflater);
            return;
        }
        Chat s03 = Y().s0();
        Intrinsics.checkNotNull(s03);
        if (com.im.freechat.extend.g.a(s03)) {
            super.onCreateOptionsMenu(menu, inflater);
        } else if (a2().r()) {
            super.onCreateOptionsMenu(menu, inflater);
        } else {
            Chat s04 = Y().s0();
            Intrinsics.checkNotNull(s04);
            if (com.im.freechat.extend.g.b(s04)) {
                inflater.inflate(b.n.f2184d, menu);
                MenuItem findItem = menu.findItem(b.j.f1955w0);
                if (findItem == null) {
                    return;
                }
                findItem.setVisible(false);
                return;
            }
            Chat s05 = Y().s0();
            Intrinsics.checkNotNull(s05);
            if (s05.getType() == Chat.Type.SINGLE) {
                inflater.inflate(b.n.f2186f, menu);
                menu.findItem(b.j.Y).setVisible(false);
                menu.findItem(b.j.C0).setVisible(false);
                menu.findItem(b.j.f1792g0).setVisible(false);
                menu.findItem(b.j.L0).setVisible(false);
                return;
            }
            inflater.inflate(b.n.f2184d, menu);
        }
    }

    @Override // io.github.rockerhieu.emojicon.f.d
    public void onEmojiconBackspaceClicked(@m8.h View view) {
        io.github.rockerhieu.emojicon.f.W(W().f65550d.f65816l);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(@m8.g MenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        int itemId = item.getItemId();
        if (itemId == b.j.Y) {
            Y().p0();
        } else if (itemId == b.j.C0) {
            Y().M1();
        } else if (itemId == b.j.f1792g0) {
            Y().e0();
        } else if (itemId == b.j.L0) {
            Y().L1();
        } else {
            if (itemId == b.j.f1865n0 || itemId == b.j.f1955w0) {
                Y().k0();
            } else if (itemId == b.j.f1832k0) {
                V3();
            } else {
                if (itemId == b.j.E0 || itemId == b.j.F0) {
                    SearchView searchView = W().A.f65889j;
                    Intrinsics.checkNotNullExpressionValue(searchView, "binding.toolbar.searchViewChat");
                    searchView.setVisibility(0);
                    SearchView searchView2 = W().A.f65889j;
                    Intrinsics.checkNotNullExpressionValue(searchView2, "binding.toolbar.searchViewChat");
                    Window window = requireActivity().getWindow();
                    Intrinsics.checkNotNullExpressionValue(window, "requireActivity().window");
                    com.im.freechat.extend.f.y(searchView2, window);
                } else if (itemId == 16908332) {
                    v3();
                } else {
                    return super.onOptionsItemSelected(item);
                }
            }
        }
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        Y().Z0();
        c2().A();
        W().f65571y.setPlayer(null);
        if (this.f42309p == BottomVisibilityState.KEYBOARD_SHOWING) {
            U3(BottomVisibilityState.NONE);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ChatDetailsAudioPlayLayout chatDetailsAudioPlayLayout = W().f65548b;
        CardView cardView = W().f65570x;
        Intrinsics.checkNotNullExpressionValue(cardView, "binding.playerContainer");
        ImageView imageView = W().f65563q;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.fullscreenIcon");
        ImageView imageView2 = W().f65569w;
        Intrinsics.checkNotNullExpressionValue(imageView2, "binding.playIcon");
        chatDetailsAudioPlayLayout.l(cardView, imageView, imageView2);
        Long j4 = W().f65548b.j();
        if (j4 != null) {
            ChatDetailsViewModel.i1(Y(), j4.longValue(), 0L, true, 2, null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        c2().A();
        W().f65571y.setPlayer(null);
    }

    @Override // com.im.freechat.base.f
    /* renamed from: p3 */
    public void a0(@m8.g ChatDetailsViewModel.Directions direction, @m8.g Bundle extras) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(extras, "extras");
        int i4 = c.$EnumSwitchMapping$0[direction.ordinal()];
        if (i4 == 1) {
            y3(extras.getLong(y1.a()));
        } else if (i4 == 2) {
            r3();
        } else if (i4 != 3) {
        } else {
            String string = extras.getString(y1.c());
            Intrinsics.checkNotNull(string);
            x3(string, extras.getString(y1.b()));
        }
    }

    @Override // com.im.freechat.ui.contacts.e
    public void x(@m8.g UserModel contact) {
        Intrinsics.checkNotNullParameter(contact, "contact");
        Y().b1(contact);
    }
}
