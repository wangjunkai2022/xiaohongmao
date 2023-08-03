package com.giphy.sdk.ui.views;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.view.ViewCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.analytics.models.enums.ActionType;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.core.models.User;
import com.giphy.sdk.core.models.enums.MediaType;
import com.giphy.sdk.core.models.enums.RenditionType;
import com.giphy.sdk.ui.GPHContentType;
import com.giphy.sdk.ui.GPHSearchSuggestionType;
import com.giphy.sdk.ui.GPHSettings;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.pagination.GPHContent;
import com.giphy.sdk.ui.themes.GridType;
import com.giphy.sdk.ui.universallist.SmartGridRecyclerView;
import com.giphy.sdk.ui.universallist.SmartItemType;
import com.giphy.sdk.ui.universallist.e;
import com.giphy.sdk.ui.utils.AvatarUtils;
import com.giphy.sdk.ui.views.GPHMediaTypeView;
import io.sentry.protocol.t;
import io.sentry.protocol.w;
import io.sentry.protocol.y;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt___StringsKt;
import timber.log.Timber;

/* compiled from: GiphyDialogFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000Ç\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f*\u0003\u0018,/\u0018\u0000 \u008e\u00022\u00020\u0001:\u0006wz\u008f\u0002\u0090\u0002B\t¢\u0006\u0006\b\u008c\u0002\u0010\u008d\u0002J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\b\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\t\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\b\u0010\n\u001a\u00020\u0006H\u0002J&\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u0006H\u0002J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0012\u0010\u0013\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\u0015\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0003J\b\u0010\u0016\u001a\u00020\u0006H\u0002J\b\u0010\u0017\u001a\u00020\u0006H\u0002J\u000f\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\b\u0010\u001b\u001a\u00020\u0004H\u0002J\b\u0010\u001c\u001a\u00020\u0006H\u0002J\b\u0010\u001d\u001a\u00020\u0006H\u0002J\b\u0010\u001e\u001a\u00020\u0006H\u0002J\b\u0010\u001f\u001a\u00020\u0006H\u0002J\u0010\u0010\"\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 H\u0002J\u0010\u0010#\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 H\u0002J\u0010\u0010$\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 H\u0002J\b\u0010%\u001a\u00020\u0006H\u0002J\b\u0010&\u001a\u00020\u0006H\u0002J\b\u0010'\u001a\u00020\u0006H\u0002J\b\u0010(\u001a\u00020\u0006H\u0002J\b\u0010*\u001a\u00020)H\u0002J\b\u0010+\u001a\u00020)H\u0002J\u000f\u0010-\u001a\u00020,H\u0002¢\u0006\u0004\b-\u0010.J\u000f\u00100\u001a\u00020/H\u0002¢\u0006\u0004\b0\u00101J\u0010\u00104\u001a\u00020\u00062\u0006\u00103\u001a\u000202H\u0002J\b\u00105\u001a\u00020\u0006H\u0002J\u0010\u00108\u001a\u00020\u00062\u0006\u00107\u001a\u000206H\u0002J\u0010\u0010:\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u000209H\u0002J\b\u0010;\u001a\u00020\u0006H\u0002J\b\u0010<\u001a\u00020\u0006H\u0002J\u0018\u0010@\u001a\u00020\u00062\u0006\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020=H\u0002J\b\u0010A\u001a\u00020\u0006H\u0002J\b\u0010B\u001a\u00020\u0006H\u0002J\b\u0010C\u001a\u00020\u0006H\u0002J\b\u0010D\u001a\u00020\u0006H\u0002J\u0018\u0010H\u001a\u00020\u00062\u0006\u0010F\u001a\u00020E2\u0006\u0010G\u001a\u000206H\u0002J\u0018\u0010I\u001a\u00020\u00062\u0006\u0010F\u001a\u00020E2\u0006\u0010G\u001a\u000206H\u0002J\u0010\u0010J\u001a\u00020\u00062\u0006\u0010F\u001a\u00020EH\u0002J\u0010\u0010L\u001a\u00020\u00062\u0006\u0010K\u001a\u00020\fH\u0002J\u0012\u0010N\u001a\u00020\u00062\b\u0010M\u001a\u0004\u0018\u00010\u0002H\u0002J\u0010\u0010Q\u001a\u00020\u00062\u0006\u0010P\u001a\u00020OH\u0002J\b\u0010R\u001a\u00020\u0006H\u0002J\u0010\u0010S\u001a\u00020\u00062\u0006\u0010P\u001a\u00020OH\u0003J\b\u0010T\u001a\u00020\u0006H\u0002J\b\u0010U\u001a\u00020\u0006H\u0002J\u0010\u0010V\u001a\u00020\u00062\u0006\u0010P\u001a\u00020OH\u0003J\b\u0010W\u001a\u00020\u0006H\u0002J\b\u0010X\u001a\u00020)H\u0002J\b\u0010Y\u001a\u00020)H\u0002J\b\u0010Z\u001a\u00020\u0006H\u0002J\b\u0010[\u001a\u00020\u0006H\u0002J\u0012\u0010\\\u001a\u00020\u00062\b\u0010P\u001a\u0004\u0018\u00010OH\u0002J\u0010\u0010_\u001a\u00020\u00062\u0006\u0010^\u001a\u00020]H\u0016J\b\u0010`\u001a\u000206H\u0016J\u0012\u0010c\u001a\u00020\u00062\b\u0010b\u001a\u0004\u0018\u00010aH\u0016J$\u0010i\u001a\u00020h2\u0006\u0010e\u001a\u00020d2\b\u0010g\u001a\u0004\u0018\u00010f2\b\u0010b\u001a\u0004\u0018\u00010aH\u0016J\u001a\u0010k\u001a\u00020\u00062\u0006\u0010j\u001a\u00020h2\b\u0010b\u001a\u0004\u0018\u00010aH\u0017J\u0012\u0010m\u001a\u00020l2\b\u0010b\u001a\u0004\u0018\u00010aH\u0016J\u0010\u0010p\u001a\u00020\u00062\u0006\u0010o\u001a\u00020nH\u0016J\b\u0010q\u001a\u00020\u0006H\u0016J\b\u0010r\u001a\u00020\u0006H\u0016J\u0010\u0010t\u001a\u00020\u00062\u0006\u0010s\u001a\u00020aH\u0016J\b\u0010u\u001a\u00020\u0006H\u0016J\b\u0010v\u001a\u00020\u0006H\u0016R\u0016\u0010y\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\u0014\u0010|\u001a\u0002068\u0002X\u0082D¢\u0006\u0006\n\u0004\bz\u0010{R\u0014\u0010~\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b}\u0010{R\u0017\u0010\u0080\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u007f\u0010{R\u0016\u0010\u0082\u0001\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010{R\u0016\u0010\u0084\u0001\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010{R\u0018\u0010\u0086\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0085\u0001\u0010{R\u0018\u0010\u0088\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010{R\u0018\u0010\u008a\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0089\u0001\u0010{R\u0018\u0010\u008c\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008b\u0001\u0010{R\u0018\u0010\u008e\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008d\u0001\u0010{R\u0019\u0010\u0091\u0001\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u001a\u0010\u0095\u0001\u001a\u00030\u0092\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R\u001b\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R7\u0010\u009d\u0001\u001a \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0099\u0001j\u000f\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002`\u009a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u009c\u0001R\u001b\u0010 \u0001\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009f\u0001R\u001a\u0010¤\u0001\u001a\u00030¡\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¢\u0001\u0010£\u0001R\u001a\u0010¨\u0001\u001a\u00030¥\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¦\u0001\u0010§\u0001R\u001a\u0010ª\u0001\u001a\u00030¥\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b©\u0001\u0010§\u0001R\u001c\u0010®\u0001\u001a\u0005\u0018\u00010«\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u00ad\u0001R\u001c\u0010²\u0001\u001a\u0005\u0018\u00010¯\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010±\u0001R\u001a\u0010¶\u0001\u001a\u00030³\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b´\u0001\u0010µ\u0001R\u001a\u0010º\u0001\u001a\u00030·\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¸\u0001\u0010¹\u0001R\u001c\u0010¾\u0001\u001a\u0005\u0018\u00010»\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010½\u0001R\u001c\u0010Â\u0001\u001a\u0005\u0018\u00010¿\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÀ\u0001\u0010Á\u0001R\u001b\u0010Å\u0001\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÃ\u0001\u0010Ä\u0001R\u001b\u0010Ç\u0001\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0001\u0010Ä\u0001R\u001b\u0010É\u0001\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010Ä\u0001R\u001c\u0010Í\u0001\u001a\u0005\u0018\u00010Ê\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bË\u0001\u0010Ì\u0001R\u001c\u0010Ð\u0001\u001a\u0005\u0018\u00010Î\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0090\u0001\u0010Ï\u0001R\u0018\u0010Ô\u0001\u001a\u00030Ñ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÒ\u0001\u0010Ó\u0001R\u0018\u0010Ö\u0001\u001a\u00030Ñ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÕ\u0001\u0010Ó\u0001R\u0017\u0010×\u0001\u001a\u00030Ñ\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b{\u0010Ó\u0001R$\u0010Ü\u0001\u001a\r Ù\u0001*\u0005\u0018\u00010Ø\u00010Ø\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÚ\u0001\u0010Û\u0001R$\u0010Þ\u0001\u001a\r Ù\u0001*\u0005\u0018\u00010Ø\u00010Ø\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÝ\u0001\u0010Û\u0001R\"\u0010à\u0001\u001a\r Ù\u0001*\u0005\u0018\u00010Ø\u00010Ø\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bß\u0001\u0010Û\u0001R\"\u0010â\u0001\u001a\r Ù\u0001*\u0005\u0018\u00010Ø\u00010Ø\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bá\u0001\u0010Û\u0001R\u0019\u0010å\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bã\u0001\u0010ä\u0001R\u0018\u00103\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bæ\u0001\u0010ç\u0001R\u0019\u0010ê\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bè\u0001\u0010é\u0001R\u0019\u0010ì\u0001\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bë\u0001\u0010ç\u0001R\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bí\u0001\u0010\u0097\u0001R\u0019\u0010ï\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bî\u0001\u0010ä\u0001R\u0019\u0010ñ\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bð\u0001\u0010ä\u0001R\u001a\u0010õ\u0001\u001a\u00030ò\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bó\u0001\u0010ô\u0001R\u0019\u0010÷\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bö\u0001\u0010ä\u0001R\u001a\u0010û\u0001\u001a\u00030ø\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bù\u0001\u0010ú\u0001R,\u0010\u0083\u0002\u001a\u0005\u0018\u00010ü\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bý\u0001\u0010þ\u0001\u001a\u0006\bÿ\u0001\u0010\u0080\u0002\"\u0006\b\u0081\u0002\u0010\u0082\u0002R\u0018\u0010\u0084\u0002\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u000e\u0010ä\u0001R,\u0010\u0086\u0002\u001a\u0005\u0018\u00010\u0085\u00028\u0004@\u0004X\u0084\u000e¢\u0006\u0018\n\u0006\b\u0086\u0002\u0010\u0087\u0002\u001a\u0006\b\u0088\u0002\u0010\u0089\u0002\"\u0006\b\u008a\u0002\u0010\u008b\u0002¨\u0006\u0091\u0002"}, d2 = {"Lcom/giphy/sdk/ui/views/GiphyDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "", s2.d.f93273b, "", "shouldPerformSearch", "", "k2", "N1", "J1", "m2", "", "Lcom/giphy/sdk/ui/h;", "suggestions", "g1", "F1", "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;", t.b.f83859d, "n2", "i2", w.b.f83891c, "O1", "W1", "V1", "com/giphy/sdk/ui/views/GiphyDialogFragment$m", "y1", "()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;", "a2", "U1", "Z1", "Y1", "X1", "", "drag", "f1", "l1", "k1", "B1", "j1", "i1", "h1", "Landroid/animation/ValueAnimator$AnimatorUpdateListener;", "z1", "x1", "com/giphy/sdk/ui/views/GiphyDialogFragment$k", "w1", "()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k;", "com/giphy/sdk/ui/views/GiphyDialogFragment$j", "u1", "()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$j;", "Lcom/giphy/sdk/ui/GPHContentType;", "contentType", "n1", "S1", "", "resultsCount", "j2", "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;", "T1", "r1", "P1", "Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;", "oldLayoutType", "newLayoutType", "m1", "f2", "e2", "h2", "g2", "Lcom/giphy/sdk/ui/universallist/g;", "itemData", "position", "H1", "G1", "L1", "item", "K1", "mediaId", "I1", "Lcom/giphy/sdk/core/models/Media;", "media", "q1", "o1", "b2", "C1", "p1", "d2", "E1", "s1", "A1", "c2", "D1", "M1", "Landroid/content/Context;", "context", "onAttach", "getTheme", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "Landroid/app/Dialog;", "onCreateDialog", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "onPause", "onResume", "outState", "onSaveInstanceState", "onDestroyView", "onDestroy", "a", "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;", "keyboardState", "b", "I", "textSpanCount", "c", "showMediaScrollThreshold", "d", "mediaSelectorHeight", "e", "suggestionsHeight", "f", "fragmentElevation", "g", "searchBarMarginTop", "h", "searchBarMarginBottom", ContextChain.TAG_INFRA, "marginBottom", "j", "searchBarMargin", "k", "fullBaseViewHeight", "l", "F", "verticalDrag", "Lcom/giphy/sdk/ui/GPHSettings;", "m", "Lcom/giphy/sdk/ui/GPHSettings;", "giphySettings", "n", "Ljava/lang/String;", "giphyApiKey", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "o", "Ljava/util/HashMap;", com.google.android.exoplayer2.text.ttml.d.f25744y, "p", "Ljava/lang/Boolean;", "giphyVerificationMode", "Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;", "q", "Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;", "containerView", "Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;", "r", "Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;", "baseView", "s", "baseViewOverlay", "Lcom/giphy/sdk/ui/views/GiphySearchBar;", "t", "Lcom/giphy/sdk/ui/views/GiphySearchBar;", "searchBar", "Landroid/widget/ImageView;", "u", "Landroid/widget/ImageView;", "searchBackButton", "Landroidx/constraintlayout/widget/ConstraintLayout;", "v", "Landroidx/constraintlayout/widget/ConstraintLayout;", "searchBarContainer", "Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;", "w", "Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;", "gifsRecyclerView", "Lcom/giphy/sdk/ui/views/GPHMediaTypeView;", y.b.f83919g, "Lcom/giphy/sdk/ui/views/GPHMediaTypeView;", "mediaSelectorView", "Lcom/giphy/sdk/ui/views/h;", y.b.f83920h, "Lcom/giphy/sdk/ui/views/h;", "suggestionsView", "z", "Landroid/view/View;", "suggestionsPlaceholderView", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "attributionView", "C", "videoAttributionView", "Lcom/giphy/sdk/ui/views/k;", ExifInterface.LONGITUDE_EAST, "Lcom/giphy/sdk/ui/views/k;", "videoPlayer", "Lcom/giphy/sdk/ui/views/c;", "Lcom/giphy/sdk/ui/views/c;", "giphyActionsView", "Landroidx/constraintlayout/widget/ConstraintSet;", "G", "Landroidx/constraintlayout/widget/ConstraintSet;", "containerConstraints", "H", "resultsConstraints", "searchBarConstrains", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", "J", "Landroid/animation/ValueAnimator;", "translateAnimator", "K", "openAnimator", "L", "attributionAnimator", "M", "videoAttributionAnimator", "N", "Z", "gifDelivered", "O", "Lcom/giphy/sdk/ui/GPHContentType;", "P", "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;", "textState", "Q", "browseContentType", "R", ExifInterface.LATITUDE_SOUTH, "isAttributionVisible", ExifInterface.GPS_DIRECTION_TRUE, "isVideoAttributionVisible", "Lcom/giphy/sdk/ui/j;", "U", "Lcom/giphy/sdk/ui/j;", "gphSuggestions", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "canShowSuggestions", "Lcom/giphy/sdk/ui/g;", ExifInterface.LONGITUDE_WEST, "Lcom/giphy/sdk/ui/g;", "recentSearches", "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;", "b1", "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;", "v1", "()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;", "R1", "(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;)V", "gifSelectionListener", "keepModelData", "Lh2/b;", "attributionViewBinding", "Lh2/b;", "t1", "()Lh2/b;", "Q1", "(Lh2/b;)V", "<init>", "()V", "x2", "GiphyTextState", "KeyboardState", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class GiphyDialogFragment extends DialogFragment {
    private static final String T1 = "gph_giphy_verification_mode";
    private static final String V1 = "key_screen_change";

    /* renamed from: b2  reason: collision with root package name */
    private static final String f19034b2 = "key_media_type";
    @m8.g

    /* renamed from: g2  reason: collision with root package name */
    public static final String f19035g2 = "gph_media";

    /* renamed from: p1  reason: collision with root package name */
    private static final String f19036p1 = "gph_giphy_settings";
    @m8.g

    /* renamed from: p2  reason: collision with root package name */
    public static final String f19037p2 = "gph_search_term";

    /* renamed from: x1  reason: collision with root package name */
    private static final String f19038x1 = "gph_giphy_api_key";
    @m8.g

    /* renamed from: x2  reason: collision with root package name */
    public static final a f19039x2 = new a(null);

    /* renamed from: y1  reason: collision with root package name */
    private static final String f19040y1 = "gph_giphy_metadata_key";
    private View A;
    @m8.h
    private h2.b B;
    private View C;
    private h2.q D;
    private com.giphy.sdk.ui.views.k E;
    private com.giphy.sdk.ui.views.c F;
    private boolean N;
    private GPHContentType O;
    private GiphyTextState P;
    private GPHContentType Q;
    private String R;
    private boolean S;
    private boolean T;
    private com.giphy.sdk.ui.j U;
    private boolean V;
    private com.giphy.sdk.ui.g W;
    @m8.h

    /* renamed from: b1  reason: collision with root package name */
    private b f19043b1;

    /* renamed from: g  reason: collision with root package name */
    private int f19048g;

    /* renamed from: g1  reason: collision with root package name */
    private boolean f19049g1;

    /* renamed from: h  reason: collision with root package name */
    private int f19050h;

    /* renamed from: i  reason: collision with root package name */
    private int f19051i;

    /* renamed from: j  reason: collision with root package name */
    private int f19052j;

    /* renamed from: k  reason: collision with root package name */
    private int f19053k;

    /* renamed from: l  reason: collision with root package name */
    private float f19054l;

    /* renamed from: m  reason: collision with root package name */
    private GPHSettings f19055m;

    /* renamed from: n  reason: collision with root package name */
    private String f19056n;

    /* renamed from: p  reason: collision with root package name */
    private Boolean f19058p;

    /* renamed from: q  reason: collision with root package name */
    private GPHTouchInterceptor f19059q;

    /* renamed from: r  reason: collision with root package name */
    private RoundedConstraintLayout f19060r;

    /* renamed from: s  reason: collision with root package name */
    private RoundedConstraintLayout f19061s;

    /* renamed from: t  reason: collision with root package name */
    private GiphySearchBar f19062t;

    /* renamed from: u  reason: collision with root package name */
    private ImageView f19063u;

    /* renamed from: v  reason: collision with root package name */
    private ConstraintLayout f19064v;

    /* renamed from: w  reason: collision with root package name */
    private SmartGridRecyclerView f19065w;

    /* renamed from: x  reason: collision with root package name */
    private GPHMediaTypeView f19066x;

    /* renamed from: y  reason: collision with root package name */
    private com.giphy.sdk.ui.views.h f19067y;

    /* renamed from: z  reason: collision with root package name */
    private View f19068z;

    /* renamed from: a  reason: collision with root package name */
    private KeyboardState f19041a = KeyboardState.CLOSED;

    /* renamed from: b  reason: collision with root package name */
    private final int f19042b = 2;

    /* renamed from: c  reason: collision with root package name */
    private final int f19044c = com.giphy.sdk.ui.utils.g.b(30);

    /* renamed from: d  reason: collision with root package name */
    private int f19045d = com.giphy.sdk.ui.utils.g.b(46);

    /* renamed from: e  reason: collision with root package name */
    private final int f19046e = com.giphy.sdk.ui.utils.g.b(46);

    /* renamed from: f  reason: collision with root package name */
    private final int f19047f = com.giphy.sdk.ui.utils.g.b(6);

    /* renamed from: o  reason: collision with root package name */
    private HashMap<String, String> f19057o = new HashMap<>();
    private final ConstraintSet G = new ConstraintSet();
    private final ConstraintSet H = new ConstraintSet();
    private final ConstraintSet I = new ConstraintSet();
    private ValueAnimator J = ValueAnimator.ofFloat(new float[0]);
    private ValueAnimator K = ValueAnimator.ofFloat(new float[0]);
    private final ValueAnimator L = ValueAnimator.ofFloat(0.0f, 0.0f);
    private final ValueAnimator M = ValueAnimator.ofFloat(0.0f, 0.0f);

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;", "", "(Ljava/lang/String;I)V", "search", "create", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public enum GiphyTextState {
        search,
        create
    }

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;", "", "(Ljava/lang/String;I)V", "OPEN", "CLOSED", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public enum KeyboardState {
        OPEN,
        CLOSED
    }

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018JW\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062$\b\u0002\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\bj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`\tH\u0007¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u000fR\u0014\u0010\u0015\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u000fR\u0014\u0010\u0016\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;", "", "Lcom/giphy/sdk/ui/GPHSettings;", "settings", "", "apiKey", "", "verificationMode", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", com.google.android.exoplayer2.text.ttml.d.f25744y, "Lcom/giphy/sdk/ui/views/GiphyDialogFragment;", "e", "(Lcom/giphy/sdk/ui/GPHSettings;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/HashMap;)Lcom/giphy/sdk/ui/views/GiphyDialogFragment;", "KEY_API_KEY", "Ljava/lang/String;", "KEY_MEDIA_TYPE", "KEY_METADATA_KEY", "KEY_SCREEN_CHANGE", "KEY_SETTINGS", "KEY_VERIFICATION_MODE", "MEDIA_DELIVERY_KEY", "SEARCH_TERM_KEY", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public static /* synthetic */ GiphyDialogFragment f(a aVar, GPHSettings gPHSettings, String str, Boolean bool, HashMap hashMap, int i4, Object obj) {
            a aVar2;
            HashMap hashMap2;
            GPHSettings gPHSettings2 = (i4 & 1) != 0 ? new GPHSettings(null, null, null, false, false, null, null, null, null, false, 0, null, false, false, false, false, null, 131071, null) : gPHSettings;
            String str2 = (i4 & 2) != 0 ? null : str;
            Boolean bool2 = (i4 & 4) == 0 ? bool : null;
            if ((i4 & 8) != 0) {
                hashMap2 = new HashMap();
                aVar2 = aVar;
            } else {
                aVar2 = aVar;
                hashMap2 = hashMap;
            }
            return aVar2.e(gPHSettings2, str2, bool2, hashMap2);
        }

        @JvmOverloads
        @m8.g
        public final GiphyDialogFragment a() {
            return f(this, null, null, null, null, 15, null);
        }

        @JvmOverloads
        @m8.g
        public final GiphyDialogFragment b(@m8.g GPHSettings gPHSettings) {
            return f(this, gPHSettings, null, null, null, 14, null);
        }

        @JvmOverloads
        @m8.g
        public final GiphyDialogFragment c(@m8.g GPHSettings gPHSettings, @m8.h String str) {
            return f(this, gPHSettings, str, null, null, 12, null);
        }

        @JvmOverloads
        @m8.g
        public final GiphyDialogFragment d(@m8.g GPHSettings gPHSettings, @m8.h String str, @m8.h Boolean bool) {
            return f(this, gPHSettings, str, bool, null, 8, null);
        }

        @JvmOverloads
        @m8.g
        public final GiphyDialogFragment e(@m8.g GPHSettings settings, @m8.h String str, @m8.h Boolean bool, @m8.g HashMap<String, String> metadata) {
            Intrinsics.checkNotNullParameter(settings, "settings");
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            GiphyDialogFragment giphyDialogFragment = new GiphyDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable(GiphyDialogFragment.f19036p1, settings);
            if (str != null) {
                bundle.putString(GiphyDialogFragment.f19038x1, str);
            }
            if (bool != null) {
                bundle.putBoolean(GiphyDialogFragment.T1, bool.booleanValue());
            }
            bundle.putSerializable(GiphyDialogFragment.f19040y1, metadata);
            giphyDialogFragment.setArguments(bundle);
            return giphyDialogFragment;
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0017\u0010\u0004\u001a\u0013\u0018\u00010\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0003¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"", "Lkotlin/ParameterName;", "name", "mediaId", "p1", "", "a", "(Ljava/lang/String;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final /* synthetic */ class a0 extends FunctionReferenceImpl implements Function1<String, Unit> {
        a0(GiphyDialogFragment giphyDialogFragment) {
            super(1, giphyDialogFragment, GiphyDialogFragment.class, "onRemoveRecentGif", "onRemoveRecentGif(Ljava/lang/String;)V", 0);
        }

        public final void a(@m8.h String str) {
            ((GiphyDialogFragment) this.receiver).I1(str);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            a(str);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0004H&¨\u0006\r"}, d2 = {"Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;", "", "Lcom/giphy/sdk/core/models/Media;", "media", "", "searchTerm", "Lcom/giphy/sdk/ui/GPHContentType;", "selectedContentType", "", "b", "a", "term", "c", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public interface b {
        void a(@m8.g GPHContentType gPHContentType);

        void b(@m8.g Media media, @m8.h String str, @m8.g GPHContentType gPHContentType);

        void c(@m8.g String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0015\u0010\u0004\u001a\u00110\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0003¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"", "Lkotlin/ParameterName;", "name", "resultsCount", "p1", "", "a", "(I)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final /* synthetic */ class b0 extends FunctionReferenceImpl implements Function1<Integer, Unit> {
        b0(GiphyDialogFragment giphyDialogFragment) {
            super(1, giphyDialogFragment, GiphyDialogFragment.class, "updateResultsCount", "updateResultsCount(I)V", 0);
        }

        public final void a(int i4) {
            ((GiphyDialogFragment) this.receiver).j2(i4);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            GiphyDialogFragment.this.C1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\t\u001a\u00020\b2\u0015\u0010\u0004\u001a\u00110\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u00032\u0015\u0010\u0007\u001a\u00110\u0005¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0006¢\u0006\u0004\b\t\u0010\n"}, d2 = {"Lcom/giphy/sdk/ui/universallist/g;", "Lkotlin/ParameterName;", "name", "itemData", "p1", "", "position", "p2", "", "a", "(Lcom/giphy/sdk/ui/universallist/g;I)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final /* synthetic */ class c0 extends FunctionReferenceImpl implements Function2<com.giphy.sdk.ui.universallist.g, Integer, Unit> {
        c0(GiphyDialogFragment giphyDialogFragment) {
            super(2, giphyDialogFragment, GiphyDialogFragment.class, "onGifSelected", "onGifSelected(Lcom/giphy/sdk/ui/universallist/SmartItemData;I)V", 0);
        }

        public final void a(@m8.g com.giphy.sdk.ui.universallist.g p12, int i4) {
            Intrinsics.checkNotNullParameter(p12, "p1");
            ((GiphyDialogFragment) this.receiver).H1(p12, i4);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(com.giphy.sdk.ui.universallist.g gVar, Integer num) {
            a(gVar, num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            GifView gifView;
            Media media;
            h2.b t12 = GiphyDialogFragment.this.t1();
            if (t12 == null || (gifView = t12.f68968j) == null || (media = gifView.getMedia()) == null) {
                return;
            }
            GiphyDialogFragment.h0(GiphyDialogFragment.this).getGifTrackingManager$giphy_ui_2_1_9_release().x(media, ActionType.SENT);
            GiphyDialogFragment.this.q1(media);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\t\u001a\u00020\b2\u0015\u0010\u0004\u001a\u00110\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u00032\u0015\u0010\u0007\u001a\u00110\u0005¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0006¢\u0006\u0004\b\t\u0010\n"}, d2 = {"Lcom/giphy/sdk/ui/universallist/g;", "Lkotlin/ParameterName;", "name", "itemData", "p1", "", "position", "p2", "", "a", "(Lcom/giphy/sdk/ui/universallist/g;I)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final /* synthetic */ class d0 extends FunctionReferenceImpl implements Function2<com.giphy.sdk.ui.universallist.g, Integer, Unit> {
        d0(GiphyDialogFragment giphyDialogFragment) {
            super(2, giphyDialogFragment, GiphyDialogFragment.class, "onGifPressed", "onGifPressed(Lcom/giphy/sdk/ui/universallist/SmartItemData;I)V", 0);
        }

        public final void a(@m8.g com.giphy.sdk.ui.universallist.g p12, int i4) {
            Intrinsics.checkNotNullParameter(p12, "p1");
            ((GiphyDialogFragment) this.receiver).G1(p12, i4);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(com.giphy.sdk.ui.universallist.g gVar, Integer num) {
            a(gVar, num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            GifView gifView;
            GiphyDialogFragment giphyDialogFragment = GiphyDialogFragment.this;
            h2.b t12 = giphyDialogFragment.t1();
            giphyDialogFragment.M1((t12 == null || (gifView = t12.f68968j) == null) ? null : gifView.getMedia());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0015\u0010\u0004\u001a\u00110\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0003¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Lcom/giphy/sdk/ui/universallist/g;", "Lkotlin/ParameterName;", "name", "itemData", "p1", "", "a", "(Lcom/giphy/sdk/ui/universallist/g;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final /* synthetic */ class e0 extends FunctionReferenceImpl implements Function1<com.giphy.sdk.ui.universallist.g, Unit> {
        e0(GiphyDialogFragment giphyDialogFragment) {
            super(1, giphyDialogFragment, GiphyDialogFragment.class, "onUserProfileInfoPressed", "onUserProfileInfoPressed(Lcom/giphy/sdk/ui/universallist/SmartItemData;)V", 0);
        }

        public final void a(@m8.g com.giphy.sdk.ui.universallist.g p12) {
            Intrinsics.checkNotNullParameter(p12, "p1");
            ((GiphyDialogFragment) this.receiver).L1(p12);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(com.giphy.sdk.ui.universallist.g gVar) {
            a(gVar);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            GiphyDialogFragment.this.E1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0015\u0010\u0004\u001a\u00110\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0003¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Lcom/giphy/sdk/ui/GPHContentType;", "Lkotlin/ParameterName;", "name", "contentType", "p1", "", "a", "(Lcom/giphy/sdk/ui/GPHContentType;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final /* synthetic */ class f0 extends FunctionReferenceImpl implements Function1<GPHContentType, Unit> {
        f0(GiphyDialogFragment giphyDialogFragment) {
            super(1, giphyDialogFragment, GiphyDialogFragment.class, "changeMediaType", "changeMediaType(Lcom/giphy/sdk/ui/GPHContentType;)V", 0);
        }

        public final void a(@m8.g GPHContentType p12) {
            Intrinsics.checkNotNullParameter(p12, "p1");
            ((GiphyDialogFragment) this.receiver).n1(p12);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(GPHContentType gPHContentType) {
            a(gPHContentType);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Media K;
            com.giphy.sdk.ui.views.k kVar = GiphyDialogFragment.this.E;
            if (kVar == null || (K = kVar.K()) == null) {
                return;
            }
            GiphyDialogFragment.h0(GiphyDialogFragment.this).getGifTrackingManager$giphy_ui_2_1_9_release().x(K, ActionType.SENT);
            GiphyDialogFragment.this.q1(K);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\b\u001a\u00020\u00072\u0015\u0010\u0004\u001a\u00110\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u00032\u0015\u0010\u0006\u001a\u00110\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0005¢\u0006\u0004\b\b\u0010\t"}, d2 = {"Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;", "Lkotlin/ParameterName;", "name", "oldLayoutType", "p1", "newLayoutType", "p2", "", "a", "(Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final /* synthetic */ class g0 extends FunctionReferenceImpl implements Function2<GPHMediaTypeView.LayoutType, GPHMediaTypeView.LayoutType, Unit> {
        g0(GiphyDialogFragment giphyDialogFragment) {
            super(2, giphyDialogFragment, GiphyDialogFragment.class, "changeLayoutType", "changeLayoutType(Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;)V", 0);
        }

        public final void a(@m8.g GPHMediaTypeView.LayoutType p12, @m8.g GPHMediaTypeView.LayoutType p22) {
            Intrinsics.checkNotNullParameter(p12, "p1");
            Intrinsics.checkNotNullParameter(p22, "p2");
            ((GiphyDialogFragment) this.receiver).m1(p12, p22);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(GPHMediaTypeView.LayoutType layoutType, GPHMediaTypeView.LayoutType layoutType2) {
            a(layoutType, layoutType2);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            GiphyDialogFragment giphyDialogFragment = GiphyDialogFragment.this;
            com.giphy.sdk.ui.views.k kVar = giphyDialogFragment.E;
            giphyDialogFragment.M1(kVar != null ? kVar.K() : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/giphy/sdk/ui/h;", "p1", "", "a", "(Lcom/giphy/sdk/ui/h;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final /* synthetic */ class h0 extends FunctionReferenceImpl implements Function1<com.giphy.sdk.ui.h, Unit> {
        h0(GiphyDialogFragment giphyDialogFragment) {
            super(1, giphyDialogFragment, GiphyDialogFragment.class, "onSuggestionPressed", "onSuggestionPressed(Lcom/giphy/sdk/ui/GPHSuggestion;)V", 0);
        }

        public final void a(@m8.g com.giphy.sdk.ui.h p12) {
            Intrinsics.checkNotNullParameter(p12, "p1");
            ((GiphyDialogFragment) this.receiver).K1(p12);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(com.giphy.sdk.ui.h hVar) {
            a(hVar);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", "onAnimationUpdate"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class i implements ValueAnimator.AnimatorUpdateListener {
        i() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator it) {
            View view = GiphyDialogFragment.this.A;
            if (view != null) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Object animatedValue = it.getAnimatedValue();
                Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
                view.setTranslationX(((Float) animatedValue).floatValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, d2 = {"<anonymous>", "", "run", "com/giphy/sdk/ui/views/GiphyDialogFragment$setupWaterfallView$2$1"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class i0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f19078a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GiphyDialogFragment f19079b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageView f19080c;

        i0(ImageView imageView, GiphyDialogFragment giphyDialogFragment, ImageView imageView2) {
            this.f19078a = imageView;
            this.f19079b = giphyDialogFragment;
            this.f19080c = imageView2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            EditText searchInput;
            ImageView imageView = this.f19078a;
            GiphySearchBar giphySearchBar = this.f19079b.f19062t;
            Editable text = (giphySearchBar == null || (searchInput = giphySearchBar.getSearchInput()) == null) ? null : searchInput.getText();
            imageView.setVisibility(text == null || text.length() == 0 ? 8 : 0);
        }
    }

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\t"}, d2 = {"com/giphy/sdk/ui/views/GiphyDialogFragment$j", "Landroid/animation/Animator$AnimatorListener;", "Landroid/animation/Animator;", "animation", "", "onAnimationRepeat", "onAnimationEnd", "onAnimationStart", "onAnimationCancel", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class j implements Animator.AnimatorListener {
        j() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(@m8.h Animator animator) {
            GiphyDialogFragment.this.dismiss();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@m8.h Animator animator) {
            GiphyDialogFragment.this.dismiss();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(@m8.h Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(@m8.h Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005¨\u0006\u0006"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick", "com/giphy/sdk/ui/views/GiphyDialogFragment$setupWaterfallView$2$2"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class j0 implements View.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImageView f19083b;

        j0(ImageView imageView) {
            this.f19083b = imageView;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Dialog dialog = GiphyDialogFragment.this.getDialog();
            if (dialog != null) {
                dialog.onBackPressed();
            }
        }
    }

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\t"}, d2 = {"com/giphy/sdk/ui/views/GiphyDialogFragment$k", "Landroid/animation/Animator$AnimatorListener;", "Landroid/animation/Animator;", "animation", "", "onAnimationRepeat", "onAnimationEnd", "onAnimationCancel", "onAnimationStart", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class k implements Animator.AnimatorListener {
        k() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(@m8.h Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@m8.h Animator animator) {
            EditText searchInput;
            if (GiphyDialogFragment.j0(GiphyDialogFragment.this).getGridType() == GridType.waterfall) {
                GiphyDialogFragment.d0(GiphyDialogFragment.this).setTranslationY(0.0f);
                ViewGroup.LayoutParams layoutParams = GiphyDialogFragment.d0(GiphyDialogFragment.this).getLayoutParams();
                Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = (int) GiphyDialogFragment.this.f19054l;
                GiphyDialogFragment.d0(GiphyDialogFragment.this).requestLayout();
            } else {
                GiphySearchBar giphySearchBar = GiphyDialogFragment.this.f19062t;
                if (giphySearchBar != null && (searchInput = giphySearchBar.getSearchInput()) != null) {
                    searchInput.requestFocus();
                }
                Context context = GiphyDialogFragment.this.getContext();
                Object systemService = context != null ? context.getSystemService("input_method") : null;
                Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
                InputMethodManager inputMethodManager = (InputMethodManager) systemService;
                GiphySearchBar giphySearchBar2 = GiphyDialogFragment.this.f19062t;
                inputMethodManager.showSoftInput(giphySearchBar2 != null ? giphySearchBar2.getSearchInput() : null, 1);
            }
            if (!GiphyDialogFragment.j0(GiphyDialogFragment.this).getShowConfirmationScreen() || GiphyDialogFragment.j0(GiphyDialogFragment.this).getGridType() == GridType.carousel) {
                return;
            }
            GiphyDialogFragment.this.o1();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(@m8.h Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(@m8.h Animator animator) {
            GiphyDialogFragment.d0(GiphyDialogFragment.this).setTranslationY(GiphyDialogFragment.this.f19053k);
            GiphyDialogFragment.d0(GiphyDialogFragment.this).setVisibility(0);
            GiphyDialogFragment.this.W1();
            GiphyDialogFragment.this.V1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"", "Lcom/giphy/sdk/ui/h;", "result", "", "<anonymous parameter 1>", "", "a", "(Ljava/util/List;Ljava/lang/Throwable;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class k0 extends Lambda implements Function2<List<? extends com.giphy.sdk.ui.h>, Throwable, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f19086b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k0(String str) {
            super(2);
            this.f19086b = str;
        }

        public final void a(@m8.g List<com.giphy.sdk.ui.h> result, @m8.h Throwable th) {
            Intrinsics.checkNotNullParameter(result, "result");
            List<com.giphy.sdk.ui.h> g12 = GiphyDialogFragment.this.g1(result, this.f19086b);
            GiphyDialogFragment.this.V = !g12.isEmpty();
            if (g12.isEmpty()) {
                GiphyDialogFragment.this.D1();
            } else {
                GiphyDialogFragment.this.c2();
            }
            com.giphy.sdk.ui.views.h hVar = GiphyDialogFragment.this.f19067y;
            if (hVar != null) {
                hVar.a(g12);
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(List<? extends com.giphy.sdk.ui.h> list, Throwable th) {
            a(list, th);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "animation", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", "onAnimationUpdate"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class l implements ValueAnimator.AnimatorUpdateListener {
        l() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator animation) {
            GiphyDialogFragment giphyDialogFragment = GiphyDialogFragment.this;
            Intrinsics.checkNotNullExpressionValue(animation, "animation");
            Object animatedValue = animation.getAnimatedValue();
            Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            giphyDialogFragment.l1(((Float) animatedValue).floatValue());
        }
    }

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J \u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0016¨\u0006\u000b"}, d2 = {"com/giphy/sdk/ui/views/GiphyDialogFragment$m", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "newState", "", "onScrollStateChanged", "dx", "dy", "onScrolled", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class m extends RecyclerView.OnScrollListener {
        m() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@m8.g RecyclerView recyclerView, int i4) {
            GiphySearchBar giphySearchBar;
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            if (i4 == 1) {
                if (GiphyDialogFragment.j0(GiphyDialogFragment.this).getGridType() != GridType.waterfall || (giphySearchBar = GiphyDialogFragment.this.f19062t) == null) {
                    return;
                }
                giphySearchBar.h();
            } else if (i4 != 0 || recyclerView.computeVerticalScrollOffset() >= GiphyDialogFragment.this.f19044c) {
            } else {
                GiphyDialogFragment.this.c2();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@m8.g RecyclerView recyclerView, int i4, int i10) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            if (recyclerView.computeVerticalScrollOffset() < GiphyDialogFragment.this.f19044c && (recyclerView.getScrollState() == 2 || recyclerView.getScrollState() == 0)) {
                GiphyDialogFragment.this.c2();
            } else if (GiphyDialogFragment.j0(GiphyDialogFragment.this).getSuggestionsBarFixedPosition()) {
            } else {
                GiphyDialogFragment.this.D1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "animation", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", "onAnimationUpdate"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class n implements ValueAnimator.AnimatorUpdateListener {
        n() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            GiphyDialogFragment giphyDialogFragment = GiphyDialogFragment.this;
            Object animatedValue = valueAnimator != null ? valueAnimator.getAnimatedValue() : null;
            Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            giphyDialogFragment.k1(((Float) animatedValue).floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", "onAnimationUpdate"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class o implements ValueAnimator.AnimatorUpdateListener {
        o() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator it) {
            View view = GiphyDialogFragment.this.C;
            if (view != null) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Object animatedValue = it.getAnimatedValue();
                Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
                view.setTranslationX(((Float) animatedValue).floatValue());
            }
        }
    }

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "onShow"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class p implements DialogInterface.OnShowListener {
        p() {
        }

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            GiphyDialogFragment giphyDialogFragment = GiphyDialogFragment.this;
            giphyDialogFragment.f19053k = GiphyDialogFragment.d0(giphyDialogFragment).getHeight();
            int i4 = com.giphy.sdk.ui.views.r.$EnumSwitchMapping$1[GiphyDialogFragment.j0(GiphyDialogFragment.this).getGridType().ordinal()];
            if (i4 == 1) {
                GiphyDialogFragment.this.K.setFloatValues(GiphyDialogFragment.this.f19053k, GiphyDialogFragment.this.f19053k * 0.25f);
            } else if (i4 == 2) {
                GiphyDialogFragment.this.K.setFloatValues(GiphyDialogFragment.this.f19053k - GiphyDialogFragment.h0(GiphyDialogFragment.this).getTop(), 0.0f);
            }
            ValueAnimator valueAnimator = GiphyDialogFragment.this.K;
            if (valueAnimator != null) {
                valueAnimator.start();
            }
        }
    }

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"com/giphy/sdk/ui/views/GiphyDialogFragment$q", "Landroid/app/Dialog;", "", "onBackPressed", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class q extends Dialog {
        q(Context context, int i4) {
            super(context, i4);
        }

        @Override // android.app.Dialog
        public void onBackPressed() {
            EditText searchInput;
            if (GiphyDialogFragment.this.S) {
                GiphyDialogFragment.this.C1();
            } else if (GiphyDialogFragment.this.T) {
                GiphyDialogFragment.this.E1();
            } else {
                String str = GiphyDialogFragment.this.R;
                if (!(str == null || str.length() == 0)) {
                    GiphySearchBar giphySearchBar = GiphyDialogFragment.this.f19062t;
                    if (giphySearchBar != null) {
                        giphySearchBar.h();
                    }
                    GiphySearchBar giphySearchBar2 = GiphyDialogFragment.this.f19062t;
                    if (giphySearchBar2 == null || (searchInput = giphySearchBar2.getSearchInput()) == null) {
                        return;
                    }
                    searchInput.setText((CharSequence) null);
                    return;
                }
                super.onBackPressed();
            }
        }
    }

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"com/giphy/sdk/ui/views/GiphyDialogFragment$r", "Lcom/giphy/sdk/ui/views/t;", "", "a", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class r implements com.giphy.sdk.ui.views.t {
        r() {
        }

        @Override // com.giphy.sdk.ui.views.t
        public void a() {
            GiphyDialogFragment.e0(GiphyDialogFragment.this).setVisibility(4);
        }
    }

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0017\u0010\u0004\u001a\u0013\u0018\u00010\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0003¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"", "Lkotlin/ParameterName;", "name", s2.d.f93273b, "p1", "", "a", "(Ljava/lang/String;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final /* synthetic */ class s extends FunctionReferenceImpl implements Function1<String, Unit> {
        s(GiphyDialogFragment giphyDialogFragment) {
            super(1, giphyDialogFragment, GiphyDialogFragment.class, "queryChangedFromSearchBar", "queryChangedFromSearchBar(Ljava/lang/String;)V", 0);
        }

        public final void a(@m8.h String str) {
            ((GiphyDialogFragment) this.receiver).N1(str);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            a(str);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0017\u0010\u0004\u001a\u0013\u0018\u00010\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0003¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"", "Lkotlin/ParameterName;", "name", s2.d.f93273b, "p1", "", "a", "(Ljava/lang/String;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final /* synthetic */ class t extends FunctionReferenceImpl implements Function1<String, Unit> {
        t(GiphyDialogFragment giphyDialogFragment) {
            super(1, giphyDialogFragment, GiphyDialogFragment.class, "onSearchPressed", "onSearchPressed(Ljava/lang/String;)V", 0);
        }

        public final void a(@m8.h String str) {
            ((GiphyDialogFragment) this.receiver).J1(str);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            a(str);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0015\u0010\u0004\u001a\u00110\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0003¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"", "Lkotlin/ParameterName;", "name", "drag", "p1", "", "a", "(F)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final /* synthetic */ class u extends FunctionReferenceImpl implements Function1<Float, Unit> {
        u(GiphyDialogFragment giphyDialogFragment) {
            super(1, giphyDialogFragment, GiphyDialogFragment.class, "accumulateDrag", "accumulateDrag(F)V", 0);
        }

        public final void a(float f10) {
            ((GiphyDialogFragment) this.receiver).f1(f10);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Float f10) {
            a(f10.floatValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final /* synthetic */ class v extends FunctionReferenceImpl implements Function0<Unit> {
        v(GiphyDialogFragment giphyDialogFragment) {
            super(0, giphyDialogFragment, GiphyDialogFragment.class, "handleDragRelease", "handleDragRelease()V", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ((GiphyDialogFragment) this.receiver).B1();
        }
    }

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final /* synthetic */ class w extends FunctionReferenceImpl implements Function0<Unit> {
        w(GiphyDialogFragment giphyDialogFragment) {
            super(0, giphyDialogFragment, GiphyDialogFragment.class, "dismiss", "dismiss()V", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ((GiphyDialogFragment) this.receiver).dismiss();
        }
    }

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\n¢\u0006\u0002\b\u000e"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/view/View;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "<anonymous parameter 2>", "<anonymous parameter 3>", "bottom", "<anonymous parameter 5>", "<anonymous parameter 6>", "<anonymous parameter 7>", "oldBottom", "onLayoutChange"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class x implements View.OnLayoutChangeListener {
        x() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            com.giphy.sdk.ui.views.c cVar = GiphyDialogFragment.this.F;
            if (cVar != null) {
                cVar.dismiss();
            }
            if (i16 != i12) {
                KeyboardState keyboardState = i16 > i12 ? KeyboardState.OPEN : KeyboardState.CLOSED;
                if (keyboardState != GiphyDialogFragment.this.f19041a) {
                    GiphyDialogFragment.this.T1(keyboardState);
                }
            }
        }
    }

    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            GiphyDialogFragment.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyDialogFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0017\u0010\u0004\u001a\u0013\u0018\u00010\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0003¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"", "Lkotlin/ParameterName;", "name", w.b.f83891c, "p1", "", "a", "(Ljava/lang/String;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final /* synthetic */ class z extends FunctionReferenceImpl implements Function1<String, Unit> {
        z(GiphyDialogFragment giphyDialogFragment) {
            super(1, giphyDialogFragment, GiphyDialogFragment.class, "queryUsername", "queryUsername(Ljava/lang/String;)V", 0);
        }

        public final void a(@m8.h String str) {
            ((GiphyDialogFragment) this.receiver).O1(str);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            a(str);
            return Unit.INSTANCE;
        }
    }

    public GiphyDialogFragment() {
        GPHContentType gPHContentType = GPHContentType.gif;
        this.O = gPHContentType;
        this.P = GiphyTextState.create;
        this.Q = gPHContentType;
    }

    private final ValueAnimator.AnimatorUpdateListener A1() {
        return new o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B1() {
        float f10 = this.f19054l;
        int i4 = this.f19053k;
        if (f10 < i4 * 0.25f) {
            j1();
        } else if (f10 >= i4 * 0.25f && f10 < i4 * 0.6f) {
            i1();
        } else if (f10 >= i4 * 0.6f) {
            h1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C1() {
        GifView gifView;
        this.S = false;
        h2.b bVar = this.B;
        if (bVar != null && (gifView = bVar.f68968j) != null) {
            GifView.J(gifView, null, null, null, 2, null);
        }
        ValueAnimator valueAnimator = this.L;
        if (valueAnimator != null) {
            valueAnimator.reverse();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void D1() {
        com.giphy.sdk.ui.views.h hVar = this.f19067y;
        if (hVar != null) {
            hVar.setVisibility(8);
        }
        View view = this.f19068z;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E1() {
        this.T = false;
        com.giphy.sdk.ui.views.k kVar = this.E;
        if (kVar != null) {
            kVar.W();
        }
        ValueAnimator valueAnimator = this.M;
        if (valueAnimator != null) {
            valueAnimator.reverse();
        }
    }

    private final void F1() {
        m2();
        GPHMediaTypeView gPHMediaTypeView = this.f19066x;
        if (gPHMediaTypeView != null) {
            gPHMediaTypeView.setGphContentType(GPHContentType.text);
        }
        this.O = GPHContentType.text;
        S1();
        i2(this.R);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G1(com.giphy.sdk.ui.universallist.g gVar, int i4) {
        if (gVar.d() == SmartItemType.Gif || gVar.d() == SmartItemType.DynamicText || gVar.d() == SmartItemType.DynamicTextWithMoreByYou || gVar.d() == SmartItemType.Video) {
            SmartGridRecyclerView smartGridRecyclerView = this.f19065w;
            if (smartGridRecyclerView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
            }
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = smartGridRecyclerView.findViewHolderForAdapterPosition(i4);
            View view = findViewHolderForAdapterPosition != null ? findViewHolderForAdapterPosition.itemView : null;
            com.giphy.sdk.ui.views.c cVar = this.F;
            if (cVar != null) {
                Object a10 = gVar.a();
                cVar.j(a10 instanceof Media ? a10 : null);
            }
            com.giphy.sdk.ui.views.c cVar2 = this.F;
            if (cVar2 != null) {
                cVar2.n(this.O == GPHContentType.recents);
            }
            com.giphy.sdk.ui.views.c cVar3 = this.F;
            if (cVar3 != null) {
                cVar3.showAsDropDown(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H1(com.giphy.sdk.ui.universallist.g gVar, int i4) {
        Timber.e("onItemSelected " + gVar.d() + " position=" + i4, new Object[0]);
        Object a10 = gVar.a();
        if (!(a10 instanceof Media)) {
            a10 = null;
        }
        Media media = (Media) a10;
        if (media != null && this.P == GiphyTextState.search && media.isDynamic()) {
            n2(GiphyTextState.create);
            F1();
            return;
        }
        Object a11 = gVar.a();
        Media media2 = (Media) (a11 instanceof Media ? a11 : null);
        if (media2 != null) {
            if (com.giphy.sdk.tracking.f.f(media2)) {
                d2(media2);
                return;
            }
            GPHSettings gPHSettings = this.f19055m;
            if (gPHSettings == null) {
                Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
            }
            if (gPHSettings.getShowConfirmationScreen()) {
                GPHSettings gPHSettings2 = this.f19055m;
                if (gPHSettings2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
                }
                if (gPHSettings2.getGridType() != GridType.carousel) {
                    b2(media2);
                    return;
                }
            }
            SmartGridRecyclerView smartGridRecyclerView = this.f19065w;
            if (smartGridRecyclerView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
            }
            smartGridRecyclerView.getGifTrackingManager$giphy_ui_2_1_9_release().x(media2, ActionType.CLICK);
            q1(media2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I1(String str) {
        if (this.O == GPHContentType.recents) {
            com.giphy.sdk.ui.l.f17075f.l().e(str);
            SmartGridRecyclerView smartGridRecyclerView = this.f19065w;
            if (smartGridRecyclerView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
            }
            smartGridRecyclerView.C(GPHContent.f18789n.getRecents());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J1(String str) {
        k2(str, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K1(com.giphy.sdk.ui.h hVar) {
        if (hVar.f() == GPHSearchSuggestionType.Text) {
            n2(GiphyTextState.create);
            F1();
            return;
        }
        com.giphy.sdk.ui.g gVar = this.W;
        if (gVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recentSearches");
        }
        gVar.a(hVar.e());
        GiphySearchBar giphySearchBar = this.f19062t;
        if (giphySearchBar != null) {
            giphySearchBar.setText(hVar.e());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L1(com.giphy.sdk.ui.universallist.g gVar) {
        if (gVar.d() == SmartItemType.UserProfile) {
            Object a10 = gVar.a();
            if (!(a10 instanceof User)) {
                a10 = null;
            }
            User user = (User) a10;
            if (user == null || getActivity() == null) {
                return;
            }
            RoundedConstraintLayout roundedConstraintLayout = this.f19061s;
            if (roundedConstraintLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("baseViewOverlay");
            }
            roundedConstraintLayout.setVisibility(0);
            com.giphy.sdk.ui.views.s a11 = com.giphy.sdk.ui.views.s.f19216f.a(user);
            a11.Z(new r());
            FragmentActivity activity = getActivity();
            Intrinsics.checkNotNull(activity);
            Intrinsics.checkNotNullExpressionValue(activity, "activity!!");
            a11.show(activity.getSupportFragmentManager().beginTransaction(), "user_profile_info");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M1(Media media) {
        startActivity(com.giphy.sdk.ui.utils.d.f18930a.c(media));
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N1(String str) {
        k2(str, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SetTextI18n"})
    public final void O1(String str) {
        EditText searchInput;
        GiphySearchBar giphySearchBar = this.f19062t;
        if (giphySearchBar == null || (searchInput = giphySearchBar.getSearchInput()) == null) {
            return;
        }
        searchInput.setText('@' + str);
    }

    private final void P1() {
        Timber.e("releaseFocus", new Object[0]);
        GPHMediaTypeView gPHMediaTypeView = this.f19066x;
        if (gPHMediaTypeView != null) {
            gPHMediaTypeView.c(false);
        }
    }

    private final void S1() {
        int stickerColumnCount;
        Timber.e("setGridTypeFromContentType", new Object[0]);
        int i4 = com.giphy.sdk.ui.views.r.$EnumSwitchMapping$6[this.O.ordinal()];
        if (i4 != 1 && i4 != 2) {
            SmartGridRecyclerView smartGridRecyclerView = this.f19065w;
            if (smartGridRecyclerView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
            }
            GPHSettings gPHSettings = this.f19055m;
            if (gPHSettings == null) {
                Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
            }
            smartGridRecyclerView.B(gPHSettings.getGridType(), null, this.O);
            SmartGridRecyclerView smartGridRecyclerView2 = this.f19065w;
            if (smartGridRecyclerView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
            }
            smartGridRecyclerView2.getGifsAdapter().g().s(false);
            return;
        }
        if (GPHContentType.text == this.O) {
            stickerColumnCount = this.f19042b;
        } else {
            GPHSettings gPHSettings2 = this.f19055m;
            if (gPHSettings2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
            }
            stickerColumnCount = gPHSettings2.getStickerColumnCount();
        }
        SmartGridRecyclerView smartGridRecyclerView3 = this.f19065w;
        if (smartGridRecyclerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        GPHSettings gPHSettings3 = this.f19055m;
        if (gPHSettings3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
        }
        smartGridRecyclerView3.B(gPHSettings3.getGridType(), Integer.valueOf(stickerColumnCount), this.O);
        SmartGridRecyclerView smartGridRecyclerView4 = this.f19065w;
        if (smartGridRecyclerView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        smartGridRecyclerView4.getGifsAdapter().g().s(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T1(KeyboardState keyboardState) {
        this.f19041a = keyboardState;
        GiphySearchBar giphySearchBar = this.f19062t;
        if (giphySearchBar != null) {
            giphySearchBar.setKeyboardState(keyboardState);
        }
        if (this.f19041a == KeyboardState.OPEN) {
            r1();
        } else {
            P1();
        }
        m2();
    }

    private final void U1() {
        EditText searchInput;
        int i4;
        RoundedConstraintLayout roundedConstraintLayout = this.f19060r;
        if (roundedConstraintLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        Context context = roundedConstraintLayout.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "baseView.context");
        GiphySearchBar giphySearchBar = new GiphySearchBar(context, com.giphy.sdk.ui.l.f17075f.m());
        giphySearchBar.setId(p.j.H2);
        Unit unit = Unit.INSTANCE;
        this.f19062t = giphySearchBar;
        ConstraintSet constraintSet = this.G;
        ConstraintLayout constraintLayout = this.f19064v;
        if (constraintLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        constraintSet.connect(constraintLayout.getId(), 4, 0, 4);
        ConstraintSet constraintSet2 = this.G;
        ConstraintLayout constraintLayout2 = this.f19064v;
        if (constraintLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        constraintSet2.connect(constraintLayout2.getId(), 6, 0, 6);
        ConstraintSet constraintSet3 = this.G;
        ConstraintLayout constraintLayout3 = this.f19064v;
        if (constraintLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        constraintSet3.connect(constraintLayout3.getId(), 7, 0, 7);
        ConstraintSet constraintSet4 = this.H;
        SmartGridRecyclerView smartGridRecyclerView = this.f19065w;
        if (smartGridRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        int id = smartGridRecyclerView.getId();
        ConstraintLayout constraintLayout4 = this.f19064v;
        if (constraintLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        constraintSet4.connect(id, 4, constraintLayout4.getId(), 3);
        ConstraintSet constraintSet5 = this.H;
        SmartGridRecyclerView smartGridRecyclerView2 = this.f19065w;
        if (smartGridRecyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        constraintSet5.connect(smartGridRecyclerView2.getId(), 6, 0, 6);
        ConstraintSet constraintSet6 = this.H;
        SmartGridRecyclerView smartGridRecyclerView3 = this.f19065w;
        if (smartGridRecyclerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        constraintSet6.connect(smartGridRecyclerView3.getId(), 7, 0, 7);
        ConstraintSet constraintSet7 = this.H;
        SmartGridRecyclerView smartGridRecyclerView4 = this.f19065w;
        if (smartGridRecyclerView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        constraintSet7.constrainHeight(smartGridRecyclerView4.getId(), getResources().getDimensionPixelSize(p.g.f17695y2));
        GiphySearchBar giphySearchBar2 = this.f19062t;
        if (giphySearchBar2 != null) {
            this.I.connect(giphySearchBar2.getId(), 3, 0, 3);
            this.I.connect(giphySearchBar2.getId(), 4, 0, 4);
            this.I.connect(giphySearchBar2.getId(), 6, 0, 6);
            this.I.connect(giphySearchBar2.getId(), 7, 0, 7);
            this.I.constrainHeight(giphySearchBar2.getId(), 1);
            this.I.setMargin(giphySearchBar2.getId(), 3, this.f19048g);
            this.I.setMargin(giphySearchBar2.getId(), 4, this.f19048g);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        RoundedConstraintLayout roundedConstraintLayout2 = this.f19060r;
        if (roundedConstraintLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        roundedConstraintLayout2.setLayoutParams(layoutParams);
        GiphySearchBar giphySearchBar3 = this.f19062t;
        if (giphySearchBar3 != null && (searchInput = giphySearchBar3.getSearchInput()) != null) {
            int i10 = com.giphy.sdk.ui.views.r.$EnumSwitchMapping$5[this.O.ordinal()];
            if (i10 == 1) {
                i4 = p.o.f18207n1;
            } else if (i10 == 2) {
                i4 = p.o.f18210o1;
            } else if (i10 != 3) {
                i4 = p.o.f18204m1;
            } else {
                i4 = p.o.f18213p1;
            }
            searchInput.setHint(i4);
        }
        ConstraintLayout constraintLayout5 = this.f19064v;
        if (constraintLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        constraintLayout5.addView(this.f19062t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V1() {
        com.giphy.sdk.ui.views.c cVar = new com.giphy.sdk.ui.views.c(getActivity(), new GPHActions[]{GPHActions.SearchMore, GPHActions.OpenGiphy});
        this.F = cVar;
        cVar.l(new z(this));
        com.giphy.sdk.ui.views.c cVar2 = this.F;
        if (cVar2 != null) {
            cVar2.k(new a0(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W1() {
        GPHContent emoji;
        S1();
        GPHSettings gPHSettings = this.f19055m;
        if (gPHSettings == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
        }
        if (gPHSettings.getGridType() == GridType.waterfall) {
            SmartGridRecyclerView smartGridRecyclerView = this.f19065w;
            if (smartGridRecyclerView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
            }
            GPHSettings gPHSettings2 = this.f19055m;
            if (gPHSettings2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
            }
            smartGridRecyclerView.setRenditionType(gPHSettings2.getRenditionType());
            SmartGridRecyclerView smartGridRecyclerView2 = this.f19065w;
            if (smartGridRecyclerView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
            }
            GPHSettings gPHSettings3 = this.f19055m;
            if (gPHSettings3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
            }
            smartGridRecyclerView2.setClipsPreviewRenditionType(gPHSettings3.getClipsPreviewRenditionType());
        }
        SmartGridRecyclerView smartGridRecyclerView3 = this.f19065w;
        if (smartGridRecyclerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        int i4 = com.giphy.sdk.ui.views.r.$EnumSwitchMapping$4[this.O.ordinal()];
        if (i4 == 1) {
            emoji = GPHContent.f18789n.getEmoji();
        } else if (i4 != 2) {
            GPHContent.Companion companion = GPHContent.f18789n;
            MediaType mediaType = this.O.getMediaType();
            GPHSettings gPHSettings4 = this.f19055m;
            if (gPHSettings4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
            }
            emoji = companion.trending(mediaType, gPHSettings4.getRating());
        } else {
            emoji = GPHContent.f18789n.getRecents();
        }
        smartGridRecyclerView3.C(emoji);
        SmartGridRecyclerView smartGridRecyclerView4 = this.f19065w;
        if (smartGridRecyclerView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        smartGridRecyclerView4.setOnResultsUpdateListener(new b0(this));
        SmartGridRecyclerView smartGridRecyclerView5 = this.f19065w;
        if (smartGridRecyclerView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        smartGridRecyclerView5.setOnItemSelectedListener(new c0(this));
        SmartGridRecyclerView smartGridRecyclerView6 = this.f19065w;
        if (smartGridRecyclerView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        smartGridRecyclerView6.setOnItemLongPressListener(new d0(this));
        SmartGridRecyclerView smartGridRecyclerView7 = this.f19065w;
        if (smartGridRecyclerView7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        smartGridRecyclerView7.setOnUserProfileInfoPressListener(new e0(this));
        SmartGridRecyclerView smartGridRecyclerView8 = this.f19065w;
        if (smartGridRecyclerView8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        smartGridRecyclerView8.addOnScrollListener(y1());
    }

    private final void X1() {
        Context context = getContext();
        com.giphy.sdk.ui.l lVar = com.giphy.sdk.ui.l.f17075f;
        i2.e m9 = lVar.m();
        GPHSettings gPHSettings = this.f19055m;
        if (gPHSettings == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
        }
        GPHMediaTypeView gPHMediaTypeView = new GPHMediaTypeView(context, m9, gPHSettings.getMediaTypeConfig());
        this.f19066x = gPHMediaTypeView;
        gPHMediaTypeView.setBackgroundColor(lVar.m().d());
        gPHMediaTypeView.setId(p.j.F2);
        gPHMediaTypeView.setMediaConfigListener(new f0(this));
        gPHMediaTypeView.setLayoutTypeListener(new g0(this));
        gPHMediaTypeView.setGphContentType(this.O);
        RoundedConstraintLayout roundedConstraintLayout = this.f19060r;
        if (roundedConstraintLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        roundedConstraintLayout.addView(gPHMediaTypeView);
        gPHMediaTypeView.setBackgroundColor(lVar.m().d());
        this.G.connect(gPHMediaTypeView.getId(), 4, 0, 4);
        this.G.connect(gPHMediaTypeView.getId(), 6, 0, 6);
        this.G.connect(gPHMediaTypeView.getId(), 7, 0, 7);
        GPHSettings gPHSettings2 = this.f19055m;
        if (gPHSettings2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
        }
        this.f19045d = gPHSettings2.getMediaTypeConfig().length >= 2 ? com.giphy.sdk.ui.utils.g.b(46) : 0;
        this.G.constrainHeight(gPHMediaTypeView.getId(), this.f19045d);
    }

    private final void Y1() {
        this.f19067y = new com.giphy.sdk.ui.views.h(getContext(), com.giphy.sdk.ui.l.f17075f.m(), new h0(this));
        this.f19068z = new View(getContext());
        com.giphy.sdk.ui.views.h hVar = this.f19067y;
        Intrinsics.checkNotNull(hVar);
        View view = this.f19068z;
        Intrinsics.checkNotNull(view);
        View[] viewArr = {hVar, view};
        for (int i4 = 0; i4 < 2; i4++) {
            View view2 = viewArr[i4];
            view2.setBackgroundColor(com.giphy.sdk.ui.l.f17075f.m().d());
            view2.setId(Intrinsics.areEqual(view2, this.f19067y) ? p.j.L2 : p.j.K2);
            ConstraintLayout constraintLayout = this.f19064v;
            if (constraintLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
            }
            constraintLayout.addView(view2);
            ConstraintSet constraintSet = this.I;
            int id = view2.getId();
            GiphySearchBar giphySearchBar = this.f19062t;
            Intrinsics.checkNotNull(giphySearchBar);
            constraintSet.connect(id, 3, giphySearchBar.getId(), 4);
            this.I.connect(view2.getId(), 6, 0, 6);
            this.I.connect(view2.getId(), 7, 0, 7);
            this.I.connect(view2.getId(), 4, 0, 4);
            this.I.constrainWidth(view2.getId(), 0);
            this.I.constrainHeight(view2.getId(), Intrinsics.areEqual(view2, this.f19067y) ? this.f19046e : this.f19050h);
            if (Intrinsics.areEqual(view2, this.f19067y)) {
                this.I.setMargin(view2.getId(), 3, this.f19048g / 2);
                this.I.setMargin(view2.getId(), 4, this.f19048g / 2);
            }
        }
    }

    private final void Z1() {
        Timber.e("setupWaterfallView", new Object[0]);
        RoundedConstraintLayout roundedConstraintLayout = this.f19060r;
        if (roundedConstraintLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        Context context = roundedConstraintLayout.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "baseView.context");
        com.giphy.sdk.ui.l lVar = com.giphy.sdk.ui.l.f17075f;
        GiphySearchBar giphySearchBar = new GiphySearchBar(context, lVar.m());
        giphySearchBar.setId(p.j.H2);
        Unit unit = Unit.INSTANCE;
        this.f19062t = giphySearchBar;
        ConstraintSet constraintSet = this.G;
        ConstraintLayout constraintLayout = this.f19064v;
        if (constraintLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        constraintSet.connect(constraintLayout.getId(), 3, 0, 3);
        ConstraintSet constraintSet2 = this.G;
        ConstraintLayout constraintLayout2 = this.f19064v;
        if (constraintLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        constraintSet2.connect(constraintLayout2.getId(), 6, 0, 6);
        ConstraintSet constraintSet3 = this.G;
        ConstraintLayout constraintLayout3 = this.f19064v;
        if (constraintLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        constraintSet3.connect(constraintLayout3.getId(), 7, 0, 7);
        X1();
        ConstraintSet constraintSet4 = this.H;
        SmartGridRecyclerView smartGridRecyclerView = this.f19065w;
        if (smartGridRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        int id = smartGridRecyclerView.getId();
        ConstraintLayout constraintLayout4 = this.f19064v;
        if (constraintLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        constraintSet4.connect(id, 3, constraintLayout4.getId(), 4);
        ConstraintSet constraintSet5 = this.H;
        SmartGridRecyclerView smartGridRecyclerView2 = this.f19065w;
        if (smartGridRecyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        int id2 = smartGridRecyclerView2.getId();
        GPHMediaTypeView gPHMediaTypeView = this.f19066x;
        Intrinsics.checkNotNull(gPHMediaTypeView);
        constraintSet5.connect(id2, 4, gPHMediaTypeView.getId(), 3);
        ConstraintSet constraintSet6 = this.H;
        SmartGridRecyclerView smartGridRecyclerView3 = this.f19065w;
        if (smartGridRecyclerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        constraintSet6.connect(smartGridRecyclerView3.getId(), 6, 0, 6);
        ConstraintSet constraintSet7 = this.H;
        SmartGridRecyclerView smartGridRecyclerView4 = this.f19065w;
        if (smartGridRecyclerView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        constraintSet7.connect(smartGridRecyclerView4.getId(), 7, 0, 7);
        ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(p.h.f17779o2);
        imageView.setId(p.j.D2);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView.setColorFilter(lVar.m().g());
        this.I.connect(imageView.getId(), 3, 0, 3);
        this.I.connect(imageView.getId(), 6, 0, 6);
        this.I.connect(imageView.getId(), 7, 0, 7);
        this.I.setMargin(imageView.getId(), 3, this.f19048g);
        this.I.constrainHeight(imageView.getId(), 20);
        this.I.constrainWidth(imageView.getId(), ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
        ImageView imageView2 = new ImageView(getContext());
        this.f19063u = imageView2;
        GiphySearchBar giphySearchBar2 = this.f19062t;
        if (giphySearchBar2 != null) {
            giphySearchBar2.post(new i0(imageView2, this, imageView));
        }
        Context context2 = getContext();
        imageView2.setContentDescription(context2 != null ? context2.getString(p.o.M0) : null);
        imageView2.setImageResource(p.h.f17794r2);
        imageView2.setId(p.j.f17887g3);
        imageView2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView2.setColorFilter(lVar.m().c());
        imageView2.setOnClickListener(new j0(imageView));
        this.I.constrainHeight(imageView2.getId(), -2);
        this.I.constrainWidth(imageView2.getId(), -2);
        this.I.connect(imageView2.getId(), 6, 0, 6);
        this.I.setMargin(imageView2.getId(), 6, this.f19052j * 2);
        this.I.setMargin(imageView2.getId(), 7, this.f19052j);
        GiphySearchBar giphySearchBar3 = this.f19062t;
        if (giphySearchBar3 != null) {
            this.I.connect(imageView2.getId(), 3, giphySearchBar3.getId(), 3);
            this.I.connect(imageView2.getId(), 4, giphySearchBar3.getId(), 4);
            this.I.connect(imageView2.getId(), 7, giphySearchBar3.getId(), 6);
            this.I.connect(giphySearchBar3.getId(), 3, imageView.getId(), 4);
            this.I.connect(giphySearchBar3.getId(), 6, imageView2.getId(), 7);
            this.I.connect(giphySearchBar3.getId(), 7, 0, 7);
            this.I.constrainHeight(giphySearchBar3.getId(), 1);
            this.I.setMargin(giphySearchBar3.getId(), 3, this.f19048g);
            this.I.setMargin(giphySearchBar3.getId(), 4, this.f19050h);
            this.I.setMargin(giphySearchBar3.getId(), 6, this.f19052j);
            this.I.setMargin(giphySearchBar3.getId(), 7, this.f19052j);
        }
        ConstraintLayout constraintLayout5 = this.f19064v;
        if (constraintLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        constraintLayout5.addView(imageView, -2, -2);
        ConstraintLayout constraintLayout6 = this.f19064v;
        if (constraintLayout6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        constraintLayout6.addView(imageView2);
        ConstraintLayout constraintLayout7 = this.f19064v;
        if (constraintLayout7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        constraintLayout7.addView(this.f19062t);
        Y1();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 80;
        RoundedConstraintLayout roundedConstraintLayout2 = this.f19060r;
        if (roundedConstraintLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        roundedConstraintLayout2.setLayoutParams(layoutParams);
    }

    private final boolean a2() {
        GPHContentType gPHContentType;
        Resources resources;
        Configuration configuration;
        FragmentActivity activity = getActivity();
        if (activity == null || (resources = activity.getResources()) == null || (configuration = resources.getConfiguration()) == null || configuration.orientation != 2) {
            GPHSettings gPHSettings = this.f19055m;
            if (gPHSettings == null) {
                Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
            }
            if (gPHSettings.getShowSuggestionsBar() && (((gPHContentType = this.O) != GPHContentType.text || this.P != GiphyTextState.create) && gPHContentType != GPHContentType.clips)) {
                return false;
            }
        }
        return true;
    }

    @SuppressLint({"SetTextI18n"})
    private final void b2(Media media) {
        this.S = true;
        h2.b bVar = this.B;
        if (bVar != null) {
            ConstraintLayout constraintLayout = bVar.f68967i;
            Intrinsics.checkNotNullExpressionValue(constraintLayout, "it.gphChannelView");
            constraintLayout.setVisibility(media.getUser() != null ? 0 : 8);
            User user = media.getUser();
            if (user != null) {
                ImageView imageView = bVar.f68971m;
                Intrinsics.checkNotNullExpressionValue(imageView, "it.verifiedBadge");
                imageView.setVisibility(user.getVerified() ? 0 : 8);
                bVar.f68961c.v(AvatarUtils.f18910a.a(user.getAvatarUrl(), AvatarUtils.Dimension.Medium));
                TextView textView = bVar.f68962d;
                Intrinsics.checkNotNullExpressionValue(textView, "it.channelName");
                textView.setText('@' + user.getUsername());
            }
            if (Intrinsics.areEqual(com.giphy.sdk.tracking.f.d(media), Boolean.TRUE)) {
                bVar.f68969k.setText(p.o.O0);
                bVar.f68968j.setBackgroundVisible(false);
            } else if (media.isSticker()) {
                bVar.f68969k.setText(p.o.Q0);
                bVar.f68968j.setBackgroundVisible(true);
            } else {
                bVar.f68969k.setText(p.o.P0);
                bVar.f68968j.setBackgroundVisible(false);
            }
            GifView gifView = bVar.f68968j;
            if (gifView != null) {
                GPHSettings gPHSettings = this.f19055m;
                if (gPHSettings == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
                }
                RenditionType confirmationRenditionType = gPHSettings.getConfirmationRenditionType();
                if (confirmationRenditionType == null) {
                    confirmationRenditionType = RenditionType.original;
                }
                gifView.I(media, confirmationRenditionType, null);
            }
        }
        GiphySearchBar giphySearchBar = this.f19062t;
        if (giphySearchBar != null) {
            giphySearchBar.h();
        }
        this.L.start();
        SmartGridRecyclerView smartGridRecyclerView = this.f19065w;
        if (smartGridRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        smartGridRecyclerView.getGifTrackingManager$giphy_ui_2_1_9_release().r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void c2() {
        Resources resources;
        Configuration configuration;
        FragmentActivity activity = getActivity();
        if ((activity == null || (resources = activity.getResources()) == null || (configuration = resources.getConfiguration()) == null || configuration.orientation != 2) && this.V && !a2()) {
            com.giphy.sdk.ui.views.h hVar = this.f19067y;
            if (hVar != null) {
                hVar.setVisibility(0);
            }
            View view = this.f19068z;
            if (view != null) {
                view.setVisibility(8);
            }
            return;
        }
        D1();
    }

    public static final /* synthetic */ RoundedConstraintLayout d0(GiphyDialogFragment giphyDialogFragment) {
        RoundedConstraintLayout roundedConstraintLayout = giphyDialogFragment.f19060r;
        if (roundedConstraintLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        return roundedConstraintLayout;
    }

    @SuppressLint({"SetTextI18n"})
    private final void d2(Media media) {
        if (this.C == null) {
            p1();
        }
        this.T = true;
        h2.q qVar = this.D;
        if (qVar != null) {
            ConstraintLayout constraintLayout = qVar.f69040i;
            Intrinsics.checkNotNullExpressionValue(constraintLayout, "it.gphChannelView");
            constraintLayout.setVisibility(media.getUser() != null ? 0 : 8);
            User user = media.getUser();
            if (user != null) {
                ImageView imageView = qVar.f69044m;
                Intrinsics.checkNotNullExpressionValue(imageView, "it.verifiedBadge");
                imageView.setVisibility(user.getVerified() ? 0 : 8);
                qVar.f69034c.v(AvatarUtils.f18910a.a(user.getAvatarUrl(), AvatarUtils.Dimension.Medium));
                TextView textView = qVar.f69035d;
                Intrinsics.checkNotNullExpressionValue(textView, "it.channelName");
                textView.setText('@' + user.getUsername());
            }
            qVar.f69042k.t(media);
            qVar.f69041j.setText(p.o.N0);
            com.giphy.sdk.ui.views.k kVar = this.E;
            if (kVar != null) {
                kVar.W();
            }
            com.giphy.sdk.ui.views.k kVar2 = new com.giphy.sdk.ui.views.k(qVar.f69042k, true);
            this.E = kVar2;
            com.giphy.sdk.ui.views.k.V(kVar2, media, false, null, null, 14, null);
        }
        GiphySearchBar giphySearchBar = this.f19062t;
        if (giphySearchBar != null) {
            giphySearchBar.h();
        }
        this.M.start();
        SmartGridRecyclerView smartGridRecyclerView = this.f19065w;
        if (smartGridRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        smartGridRecyclerView.getGifTrackingManager$giphy_ui_2_1_9_release().r();
    }

    public static final /* synthetic */ RoundedConstraintLayout e0(GiphyDialogFragment giphyDialogFragment) {
        RoundedConstraintLayout roundedConstraintLayout = giphyDialogFragment.f19061s;
        if (roundedConstraintLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseViewOverlay");
        }
        return roundedConstraintLayout;
    }

    private final void e2() {
        Timber.e("transitionBackToSearchFocus", new Object[0]);
        S1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f1(float f10) {
        Timber.e("accumulateDrag " + f10, new Object[0]);
        float f11 = this.f19054l + f10;
        this.f19054l = f11;
        float max = Math.max(f11, 0.0f);
        this.f19054l = max;
        k1(max);
    }

    private final void f2() {
        Timber.e("transitionForwardToSearchFocus", new Object[0]);
        GPHContentType gPHContentType = this.O;
        boolean z9 = true;
        boolean z10 = gPHContentType != this.Q;
        this.Q = gPHContentType;
        if (gPHContentType == GPHContentType.emoji || gPHContentType == GPHContentType.recents) {
            this.O = GPHContentType.gif;
        } else {
            z9 = z10;
        }
        GPHMediaTypeView gPHMediaTypeView = this.f19066x;
        if (gPHMediaTypeView != null) {
            gPHMediaTypeView.setGphContentType(this.O);
        }
        if (z9) {
            S1();
            i2("");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<com.giphy.sdk.ui.h> g1(List<com.giphy.sdk.ui.h> list, String str) {
        boolean contains;
        List listOf;
        Character firstOrNull;
        List<com.giphy.sdk.ui.h> mutableList;
        GPHSettings gPHSettings = this.f19055m;
        if (gPHSettings == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
        }
        if (gPHSettings.getEnableDynamicText()) {
            GPHSettings gPHSettings2 = this.f19055m;
            if (gPHSettings2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
            }
            GPHContentType[] mediaTypeConfig = gPHSettings2.getMediaTypeConfig();
            GPHContentType gPHContentType = GPHContentType.text;
            contains = ArraysKt___ArraysKt.contains(mediaTypeConfig, gPHContentType);
            if (contains) {
                listOf = CollectionsKt__CollectionsJVMKt.listOf(gPHContentType);
                if (listOf.contains(this.O)) {
                    return list;
                }
                if (str == null || str.length() == 0) {
                    return list;
                }
                firstOrNull = StringsKt___StringsKt.firstOrNull(str);
                if (firstOrNull != null && firstOrNull.charValue() == '@') {
                    return list;
                }
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
                mutableList.add(0, new com.giphy.sdk.ui.h(GPHSearchSuggestionType.Text, str));
                return mutableList;
            }
            return list;
        }
        return list;
    }

    private final void g2() {
        Timber.e("transitionFromFocusToBrowse", new Object[0]);
        GPHContentType gPHContentType = this.O;
        GPHContentType gPHContentType2 = this.Q;
        boolean z9 = gPHContentType != gPHContentType2;
        this.O = gPHContentType2;
        GPHMediaTypeView gPHMediaTypeView = this.f19066x;
        if (gPHMediaTypeView != null) {
            gPHMediaTypeView.setGphContentType(gPHContentType2);
        }
        S1();
        if (z9) {
            i2("");
        }
    }

    public static final /* synthetic */ SmartGridRecyclerView h0(GiphyDialogFragment giphyDialogFragment) {
        SmartGridRecyclerView smartGridRecyclerView = giphyDialogFragment.f19065w;
        if (smartGridRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        return smartGridRecyclerView;
    }

    private final void h1() {
        Timber.e("animateToClose", new Object[0]);
        this.J.setFloatValues(this.f19054l, this.f19053k);
        this.J.addListener(u1());
        this.J.start();
    }

    private final void h2() {
        Timber.e("transitionFromResultsToBrowse", new Object[0]);
        GPHContentType gPHContentType = this.Q;
        this.O = gPHContentType;
        GPHMediaTypeView gPHMediaTypeView = this.f19066x;
        if (gPHMediaTypeView != null) {
            gPHMediaTypeView.setGphContentType(gPHContentType);
        }
        S1();
        i2(null);
    }

    private final void i1() {
        Timber.e("animateToHalf", new Object[0]);
        this.J.setFloatValues(this.f19054l, this.f19053k * 0.25f);
        this.J.start();
    }

    private final void i2(String str) {
        GPHContent emoji;
        this.R = str;
        m2();
        if (str == null || str.length() == 0) {
            SmartGridRecyclerView smartGridRecyclerView = this.f19065w;
            if (smartGridRecyclerView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
            }
            int i4 = com.giphy.sdk.ui.views.r.$EnumSwitchMapping$3[this.O.ordinal()];
            if (i4 == 1) {
                emoji = GPHContent.f18789n.getEmoji();
            } else if (i4 != 2) {
                GPHContent.Companion companion = GPHContent.f18789n;
                MediaType mediaType = this.O.getMediaType();
                GPHSettings gPHSettings = this.f19055m;
                if (gPHSettings == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
                }
                emoji = companion.trending(mediaType, gPHSettings.getRating());
            } else {
                emoji = GPHContent.f18789n.getRecents();
            }
            smartGridRecyclerView.C(emoji);
            return;
        }
        if (this.O == GPHContentType.text && this.P == GiphyTextState.create) {
            SmartGridRecyclerView smartGridRecyclerView2 = this.f19065w;
            if (smartGridRecyclerView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
            }
            smartGridRecyclerView2.C(GPHContent.f18789n.animate(str));
        } else {
            SmartGridRecyclerView smartGridRecyclerView3 = this.f19065w;
            if (smartGridRecyclerView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
            }
            GPHContent.Companion companion2 = GPHContent.f18789n;
            MediaType mediaType2 = this.O.getMediaType();
            GPHSettings gPHSettings2 = this.f19055m;
            if (gPHSettings2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
            }
            smartGridRecyclerView3.C(companion2.searchQuery(str, mediaType2, gPHSettings2.getRating()));
        }
        b bVar = this.f19043b1;
        if (bVar != null) {
            bVar.c(str);
        }
    }

    public static final /* synthetic */ GPHSettings j0(GiphyDialogFragment giphyDialogFragment) {
        GPHSettings gPHSettings = giphyDialogFragment.f19055m;
        if (gPHSettings == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
        }
        return gPHSettings;
    }

    private final void j1() {
        Timber.e("animateToOpen", new Object[0]);
        this.J.setFloatValues(this.f19054l, 0.0f);
        this.J.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j2(int i4) {
        GiphyTextState giphyTextState;
        GPHMediaTypeView gPHMediaTypeView;
        String str = this.R;
        if (!(str == null || str.length() == 0) && (gPHMediaTypeView = this.f19066x) != null) {
            gPHMediaTypeView.g();
        }
        if (i4 > 0) {
            SmartGridRecyclerView smartGridRecyclerView = this.f19065w;
            if (smartGridRecyclerView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
            }
            if (smartGridRecyclerView.v()) {
                giphyTextState = GiphyTextState.create;
                n2(giphyTextState);
            }
        }
        giphyTextState = GiphyTextState.search;
        n2(giphyTextState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k1(float f10) {
        if (this.f19053k == 0) {
            RoundedConstraintLayout roundedConstraintLayout = this.f19060r;
            if (roundedConstraintLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("baseView");
            }
            this.f19053k = roundedConstraintLayout.getHeight();
        }
        this.f19054l = f10;
        RoundedConstraintLayout roundedConstraintLayout2 = this.f19060r;
        if (roundedConstraintLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        ViewGroup.LayoutParams layoutParams = roundedConstraintLayout2.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = (int) this.f19054l;
        RoundedConstraintLayout roundedConstraintLayout3 = this.f19060r;
        if (roundedConstraintLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        roundedConstraintLayout3.requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0043, code lost:
        if (r6 == false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void k2(java.lang.String r5, boolean r6) {
        /*
            r4 = this;
            r0 = 0
            r1 = 1
            if (r5 == 0) goto Ld
            int r2 = r5.length()
            if (r2 != 0) goto Lb
            goto Ld
        Lb:
            r2 = 0
            goto Le
        Ld:
            r2 = 1
        Le:
            r2 = r2 ^ r1
            android.widget.ImageView r3 = r4.f19063u
            if (r3 == 0) goto L1c
            if (r2 == 0) goto L17
            r2 = 0
            goto L19
        L17:
            r2 = 8
        L19:
            r3.setVisibility(r2)
        L1c:
            com.giphy.sdk.ui.GPHContentType r2 = r4.O
            com.giphy.sdk.ui.GPHContentType r3 = com.giphy.sdk.ui.GPHContentType.emoji
            if (r2 != r3) goto L29
            com.giphy.sdk.ui.GPHContentType r2 = com.giphy.sdk.ui.GPHContentType.gif
            r4.O = r2
            r4.S1()
        L29:
            com.giphy.sdk.ui.GPHContentType r2 = r4.O
            com.giphy.sdk.ui.GPHContentType r3 = com.giphy.sdk.ui.GPHContentType.text
            if (r2 != r3) goto L45
            com.giphy.sdk.ui.views.GiphyDialogFragment$GiphyTextState r2 = r4.P
            com.giphy.sdk.ui.views.GiphyDialogFragment$GiphyTextState r3 = com.giphy.sdk.ui.views.GiphyDialogFragment.GiphyTextState.create
            if (r2 != r3) goto L45
            if (r5 == 0) goto L40
            int r2 = r5.length()
            if (r2 != 0) goto L3e
            goto L40
        L3e:
            r2 = 0
            goto L41
        L40:
            r2 = 1
        L41:
            if (r2 != 0) goto L45
            if (r6 == 0) goto L48
        L45:
            r4.i2(r5)
        L48:
            if (r5 == 0) goto L53
            int r5 = r5.length()
            if (r5 != 0) goto L51
            goto L53
        L51:
            r5 = 0
            goto L54
        L53:
            r5 = 1
        L54:
            if (r5 == 0) goto L6b
            com.giphy.sdk.ui.views.GiphyDialogFragment$KeyboardState r5 = r4.f19041a
            com.giphy.sdk.ui.views.GiphyDialogFragment$KeyboardState r6 = com.giphy.sdk.ui.views.GiphyDialogFragment.KeyboardState.OPEN
            if (r5 != r6) goto L5f
            r4.r1()
        L5f:
            com.giphy.sdk.ui.views.GPHMediaTypeView r5 = r4.f19066x
            if (r5 == 0) goto L6b
            com.giphy.sdk.ui.views.GiphyDialogFragment$KeyboardState r2 = r4.f19041a
            if (r2 != r6) goto L68
            r0 = 1
        L68:
            r5.e(r0)
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.giphy.sdk.ui.views.GiphyDialogFragment.k2(java.lang.String, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l1(float f10) {
        this.f19054l = f10;
        RoundedConstraintLayout roundedConstraintLayout = this.f19060r;
        if (roundedConstraintLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        roundedConstraintLayout.setTranslationY(f10);
    }

    static /* synthetic */ void l2(GiphyDialogFragment giphyDialogFragment, String str, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        giphyDialogFragment.k2(str, z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m1(GPHMediaTypeView.LayoutType layoutType, GPHMediaTypeView.LayoutType layoutType2) {
        Timber.e("changeLayoutType " + layoutType + ' ' + layoutType2, new Object[0]);
        GPHMediaTypeView.LayoutType layoutType3 = GPHMediaTypeView.LayoutType.browse;
        if (layoutType == layoutType3 && layoutType2 == GPHMediaTypeView.LayoutType.searchFocus) {
            f2();
            return;
        }
        GPHMediaTypeView.LayoutType layoutType4 = GPHMediaTypeView.LayoutType.searchResults;
        if (layoutType == layoutType4 && layoutType2 == layoutType3) {
            h2();
            return;
        }
        GPHMediaTypeView.LayoutType layoutType5 = GPHMediaTypeView.LayoutType.searchFocus;
        if (layoutType == layoutType5 && layoutType2 == layoutType3) {
            g2();
        } else if (layoutType == layoutType4 && layoutType2 == layoutType5) {
            e2();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void m2() {
        /*
            r8 = this;
            boolean r0 = r8.a2()
            if (r0 == 0) goto La
            r8.D1()
            return
        La:
            com.giphy.sdk.ui.GPHContentType r0 = r8.O
            com.giphy.sdk.ui.GPHContentType r1 = com.giphy.sdk.ui.GPHContentType.recents
            if (r0 == r1) goto L42
            java.lang.String r0 = r8.R
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L1f
            int r0 = r0.length()
            if (r0 != 0) goto L1d
            goto L1f
        L1d:
            r0 = 0
            goto L20
        L1f:
            r0 = 1
        L20:
            if (r0 == 0) goto L29
            com.giphy.sdk.ui.views.GiphyDialogFragment$KeyboardState r0 = r8.f19041a
            com.giphy.sdk.ui.views.GiphyDialogFragment$KeyboardState r3 = com.giphy.sdk.ui.views.GiphyDialogFragment.KeyboardState.OPEN
            if (r0 != r3) goto L29
            goto L42
        L29:
            java.lang.String r0 = r8.R
            if (r0 == 0) goto L33
            int r0 = r0.length()
            if (r0 != 0) goto L34
        L33:
            r1 = 1
        L34:
            if (r1 == 0) goto L3f
            com.giphy.sdk.ui.views.GiphyDialogFragment$KeyboardState r0 = r8.f19041a
            com.giphy.sdk.ui.views.GiphyDialogFragment$KeyboardState r1 = com.giphy.sdk.ui.views.GiphyDialogFragment.KeyboardState.CLOSED
            if (r0 != r1) goto L3f
            com.giphy.sdk.ui.GPHSearchSuggestionType r0 = com.giphy.sdk.ui.GPHSearchSuggestionType.Trending
            goto L44
        L3f:
            com.giphy.sdk.ui.GPHSearchSuggestionType r0 = com.giphy.sdk.ui.GPHSearchSuggestionType.Channels
            goto L44
        L42:
            com.giphy.sdk.ui.GPHSearchSuggestionType r0 = com.giphy.sdk.ui.GPHSearchSuggestionType.Recents
        L44:
            r2 = r0
            java.lang.String r0 = r8.R
            if (r0 == 0) goto L4a
            goto L4c
        L4a:
            java.lang.String r0 = ""
        L4c:
            r3 = r0
            com.giphy.sdk.ui.j r1 = r8.U
            if (r1 != 0) goto L56
            java.lang.String r0 = "gphSuggestions"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0)
        L56:
            r4 = 0
            com.giphy.sdk.ui.views.GiphyDialogFragment$k0 r5 = new com.giphy.sdk.ui.views.GiphyDialogFragment$k0
            r5.<init>(r3)
            r6 = 4
            r7 = 0
            com.giphy.sdk.ui.i.a.a(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.giphy.sdk.ui.views.GiphyDialogFragment.m2():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n1(GPHContentType gPHContentType) {
        Timber.e("changeMediaType", new Object[0]);
        n2(GiphyTextState.search);
        this.O = gPHContentType;
        S1();
        i2(this.R);
    }

    private final void n2(GiphyTextState giphyTextState) {
        GiphySearchBar giphySearchBar;
        this.P = giphyTextState;
        int i4 = com.giphy.sdk.ui.views.r.$EnumSwitchMapping$2[giphyTextState.ordinal()];
        if (i4 != 1) {
            if (i4 == 2 && (giphySearchBar = this.f19062t) != null) {
                giphySearchBar.l(p.h.M2);
                return;
            }
            return;
        }
        GiphySearchBar giphySearchBar2 = this.f19062t;
        if (giphySearchBar2 != null) {
            giphySearchBar2.l(p.h.R2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o1() {
        ConstraintLayout constraintLayout;
        Button button;
        LinearLayout linearLayout;
        LayoutInflater from = LayoutInflater.from(getContext());
        RoundedConstraintLayout roundedConstraintLayout = this.f19060r;
        if (roundedConstraintLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        h2.b d4 = h2.b.d(from, roundedConstraintLayout, false);
        this.B = d4;
        ConstraintLayout root = d4 != null ? d4.getRoot() : null;
        this.A = root;
        if (root != null) {
            RoundedConstraintLayout roundedConstraintLayout2 = this.f19060r;
            if (roundedConstraintLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("baseView");
            }
            root.setTranslationX(roundedConstraintLayout2.getWidth());
        }
        GPHSettings gPHSettings = this.f19055m;
        if (gPHSettings == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
        }
        if (gPHSettings.getGridType() == GridType.carousel) {
            GPHTouchInterceptor gPHTouchInterceptor = this.f19059q;
            if (gPHTouchInterceptor == null) {
                Intrinsics.throwUninitializedPropertyAccessException("containerView");
            }
            gPHTouchInterceptor.addView(this.A, -1, -1);
            View view = this.A;
            Intrinsics.checkNotNull(view);
            ViewCompat.setElevation(view, this.f19047f);
        } else {
            RoundedConstraintLayout roundedConstraintLayout3 = this.f19060r;
            if (roundedConstraintLayout3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("baseView");
            }
            roundedConstraintLayout3.addView(this.A, -1, -1);
        }
        ValueAnimator valueAnimator = this.L;
        float[] fArr = new float[2];
        RoundedConstraintLayout roundedConstraintLayout4 = this.f19060r;
        if (roundedConstraintLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        fArr[0] = roundedConstraintLayout4.getWidth();
        fArr[1] = 0.0f;
        valueAnimator.setFloatValues(fArr);
        ValueAnimator attributionAnimator = this.L;
        Intrinsics.checkNotNullExpressionValue(attributionAnimator, "attributionAnimator");
        attributionAnimator.setDuration(200L);
        this.L.addUpdateListener(s1());
        h2.b bVar = this.B;
        if (bVar != null && (linearLayout = bVar.f68964f) != null) {
            linearLayout.setOnClickListener(new c());
        }
        h2.b bVar2 = this.B;
        if (bVar2 != null && (button = bVar2.f68969k) != null) {
            button.setOnClickListener(new d());
        }
        h2.b bVar3 = this.B;
        if (bVar3 != null && (constraintLayout = bVar3.f68967i) != null) {
            constraintLayout.setOnClickListener(new e());
        }
        h2.b bVar4 = this.B;
        if (bVar4 != null) {
            ConstraintLayout constraintLayout2 = bVar4.f68960b;
            com.giphy.sdk.ui.l lVar = com.giphy.sdk.ui.l.f17075f;
            constraintLayout2.setBackgroundColor(lVar.m().d());
            bVar4.f68965g.setColorFilter(lVar.m().e());
            bVar4.f68966h.setTextColor(lVar.m().e());
            bVar4.f68962d.setTextColor(lVar.m().e());
            bVar4.f68963e.setTextColor(lVar.m().m());
        }
    }

    private final void p1() {
        ConstraintLayout constraintLayout;
        Button button;
        LinearLayout linearLayout;
        LayoutInflater from = LayoutInflater.from(getContext());
        RoundedConstraintLayout roundedConstraintLayout = this.f19060r;
        if (roundedConstraintLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        h2.q d4 = h2.q.d(from, roundedConstraintLayout, false);
        this.D = d4;
        ConstraintLayout root = d4 != null ? d4.getRoot() : null;
        this.C = root;
        if (root != null) {
            RoundedConstraintLayout roundedConstraintLayout2 = this.f19060r;
            if (roundedConstraintLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("baseView");
            }
            root.setTranslationX(roundedConstraintLayout2.getWidth());
        }
        RoundedConstraintLayout roundedConstraintLayout3 = this.f19060r;
        if (roundedConstraintLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        roundedConstraintLayout3.addView(this.C, -1, -1);
        ValueAnimator valueAnimator = this.M;
        float[] fArr = new float[2];
        RoundedConstraintLayout roundedConstraintLayout4 = this.f19060r;
        if (roundedConstraintLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        fArr[0] = roundedConstraintLayout4.getWidth();
        fArr[1] = 0.0f;
        valueAnimator.setFloatValues(fArr);
        ValueAnimator videoAttributionAnimator = this.M;
        Intrinsics.checkNotNullExpressionValue(videoAttributionAnimator, "videoAttributionAnimator");
        videoAttributionAnimator.setDuration(200L);
        this.M.addUpdateListener(A1());
        h2.q qVar = this.D;
        if (qVar != null && (linearLayout = qVar.f69037f) != null) {
            linearLayout.setOnClickListener(new f());
        }
        h2.q qVar2 = this.D;
        if (qVar2 != null && (button = qVar2.f69041j) != null) {
            button.setOnClickListener(new g());
        }
        h2.q qVar3 = this.D;
        if (qVar3 != null && (constraintLayout = qVar3.f69040i) != null) {
            constraintLayout.setOnClickListener(new h());
        }
        h2.q qVar4 = this.D;
        if (qVar4 != null) {
            ConstraintLayout constraintLayout2 = qVar4.f69033b;
            com.giphy.sdk.ui.l lVar = com.giphy.sdk.ui.l.f17075f;
            constraintLayout2.setBackgroundColor(lVar.m().d());
            qVar4.f69038g.setColorFilter(lVar.m().e());
            qVar4.f69039h.setTextColor(lVar.m().e());
            qVar4.f69035d.setTextColor(lVar.m().e());
            qVar4.f69036e.setTextColor(lVar.m().m());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q1(Media media) {
        com.giphy.sdk.ui.l.f17075f.l().a(media);
        media.setBottleData(null);
        Fragment targetFragment = getTargetFragment();
        if (targetFragment != null) {
            Intent intent = new Intent();
            intent.putExtra(f19035g2, media);
            intent.putExtra(f19037p2, this.R);
            targetFragment.onActivityResult(getTargetRequestCode(), -1, intent);
        } else {
            b bVar = this.f19043b1;
            if (bVar != null) {
                bVar.b(media, this.R, this.O);
            }
        }
        this.N = true;
        String str = this.R;
        if (str != null) {
            com.giphy.sdk.ui.g gVar = this.W;
            if (gVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("recentSearches");
            }
            gVar.a(str);
        }
        dismiss();
    }

    private final void r1() {
        Timber.e("focusSearch", new Object[0]);
        j1();
        GPHMediaTypeView gPHMediaTypeView = this.f19066x;
        if (gPHMediaTypeView != null) {
            gPHMediaTypeView.c(true);
        }
    }

    private final ValueAnimator.AnimatorUpdateListener s1() {
        return new i();
    }

    private final j u1() {
        return new j();
    }

    private final k w1() {
        return new k();
    }

    private final ValueAnimator.AnimatorUpdateListener x1() {
        return new l();
    }

    private final m y1() {
        return new m();
    }

    private final ValueAnimator.AnimatorUpdateListener z1() {
        return new n();
    }

    protected final void Q1(@m8.h h2.b bVar) {
        this.B = bVar;
    }

    public final void R1(@m8.h b bVar) {
        this.f19043b1 = bVar;
    }

    @Override // androidx.fragment.app.DialogFragment
    public int getTheme() {
        GPHSettings gPHSettings = this.f19055m;
        if (gPHSettings == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
        }
        return gPHSettings.getGridType() == GridType.carousel ? p.C0138p.U3 : p.C0138p.W3;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@m8.g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        if (this.f19043b1 == null) {
            if (!(context instanceof b)) {
                context = null;
            }
            b bVar = (b) context;
            if (bVar != null) {
                this.f19043b1 = bVar;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0109, code lost:
        if (r2.getStickerColumnCount() > 4) goto L90;
     */
    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onCreate(@m8.h android.os.Bundle r26) {
        /*
            Method dump skipped, instructions count: 532
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.giphy.sdk.ui.views.GiphyDialogFragment.onCreate(android.os.Bundle):void");
    }

    @Override // androidx.fragment.app.DialogFragment
    @m8.g
    public Dialog onCreateDialog(@m8.h Bundle bundle) {
        FragmentActivity activity = getActivity();
        Intrinsics.checkNotNull(activity);
        q qVar = new q(activity, getTheme());
        qVar.setOnShowListener(new p());
        return qVar;
    }

    @Override // androidx.fragment.app.Fragment
    @m8.g
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        FragmentActivity activity;
        Resources resources;
        Configuration configuration;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        Intrinsics.checkNotNullExpressionValue(context, "context!!");
        this.f19059q = new GPHTouchInterceptor(context, null, 0, 6, null);
        Context context2 = getContext();
        Intrinsics.checkNotNull(context2);
        Intrinsics.checkNotNullExpressionValue(context2, "context!!");
        RoundedConstraintLayout roundedConstraintLayout = new RoundedConstraintLayout(context2, null, 0, 6, null);
        roundedConstraintLayout.setId(p.j.B2);
        Unit unit = Unit.INSTANCE;
        this.f19060r = roundedConstraintLayout;
        Context context3 = getContext();
        Intrinsics.checkNotNull(context3);
        Intrinsics.checkNotNullExpressionValue(context3, "context!!");
        RoundedConstraintLayout roundedConstraintLayout2 = new RoundedConstraintLayout(context3, null, 0, 6, null);
        roundedConstraintLayout2.setId(p.j.C2);
        com.giphy.sdk.ui.l lVar = com.giphy.sdk.ui.l.f17075f;
        roundedConstraintLayout2.setBackgroundColor(lVar.m().f());
        this.f19061s = roundedConstraintLayout2;
        ConstraintLayout constraintLayout = new ConstraintLayout(getContext());
        constraintLayout.setId(p.j.I2);
        this.f19064v = constraintLayout;
        RoundedConstraintLayout roundedConstraintLayout3 = this.f19060r;
        if (roundedConstraintLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        Context context4 = roundedConstraintLayout3.getContext();
        Intrinsics.checkNotNullExpressionValue(context4, "baseView.context");
        SmartGridRecyclerView smartGridRecyclerView = new SmartGridRecyclerView(context4, null, 0, 6, null);
        smartGridRecyclerView.setId(p.j.G2);
        e.a g4 = smartGridRecyclerView.getGifsAdapter().g();
        GPHSettings gPHSettings = this.f19055m;
        if (gPHSettings == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
        }
        g4.n(gPHSettings);
        e.a g10 = smartGridRecyclerView.getGifsAdapter().g();
        GPHSettings gPHSettings2 = this.f19055m;
        if (gPHSettings2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
        }
        g10.r(gPHSettings2.getShowCheckeredBackground());
        e.a g11 = smartGridRecyclerView.getGifsAdapter().g();
        GPHSettings gPHSettings3 = this.f19055m;
        if (gPHSettings3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
        }
        g11.o(gPHSettings3.getImageFormat());
        this.f19065w = smartGridRecyclerView;
        smartGridRecyclerView.setBackgroundColor(lVar.m().d());
        ConstraintLayout constraintLayout2 = this.f19064v;
        if (constraintLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        constraintLayout2.setBackgroundColor(lVar.m().d());
        GPHSettings gPHSettings4 = this.f19055m;
        if (gPHSettings4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
        }
        int i4 = com.giphy.sdk.ui.views.r.$EnumSwitchMapping$0[gPHSettings4.getGridType().ordinal()];
        boolean z9 = true;
        if (i4 == 1) {
            U1();
        } else if (i4 == 2) {
            Z1();
        }
        GPHTouchInterceptor gPHTouchInterceptor = this.f19059q;
        if (gPHTouchInterceptor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerView");
        }
        RoundedConstraintLayout roundedConstraintLayout4 = this.f19060r;
        if (roundedConstraintLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        gPHTouchInterceptor.addView(roundedConstraintLayout4);
        GPHTouchInterceptor gPHTouchInterceptor2 = this.f19059q;
        if (gPHTouchInterceptor2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerView");
        }
        RoundedConstraintLayout roundedConstraintLayout5 = this.f19061s;
        if (roundedConstraintLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseViewOverlay");
        }
        gPHTouchInterceptor2.addView(roundedConstraintLayout5);
        GPHTouchInterceptor gPHTouchInterceptor3 = this.f19059q;
        if (gPHTouchInterceptor3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerView");
        }
        ConstraintLayout constraintLayout3 = this.f19064v;
        if (constraintLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        gPHTouchInterceptor3.setDragView(constraintLayout3);
        GPHTouchInterceptor gPHTouchInterceptor4 = this.f19059q;
        if (gPHTouchInterceptor4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerView");
        }
        RoundedConstraintLayout roundedConstraintLayout6 = this.f19060r;
        if (roundedConstraintLayout6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        gPHTouchInterceptor4.setSlideView(roundedConstraintLayout6);
        ConstraintSet constraintSet = this.G;
        ConstraintLayout constraintLayout4 = this.f19064v;
        if (constraintLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        constraintSet.constrainDefaultHeight(constraintLayout4.getId(), 1);
        RoundedConstraintLayout roundedConstraintLayout7 = this.f19060r;
        if (roundedConstraintLayout7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        ConstraintLayout constraintLayout5 = this.f19064v;
        if (constraintLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        roundedConstraintLayout7.addView(constraintLayout5, -1, 0);
        RoundedConstraintLayout roundedConstraintLayout8 = this.f19060r;
        if (roundedConstraintLayout8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        SmartGridRecyclerView smartGridRecyclerView2 = this.f19065w;
        if (smartGridRecyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
        }
        roundedConstraintLayout8.addView(smartGridRecyclerView2, -1, 0);
        ConstraintSet constraintSet2 = this.I;
        ConstraintLayout constraintLayout6 = this.f19064v;
        if (constraintLayout6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarContainer");
        }
        constraintSet2.applyTo(constraintLayout6);
        ConstraintSet constraintSet3 = this.G;
        RoundedConstraintLayout roundedConstraintLayout9 = this.f19060r;
        if (roundedConstraintLayout9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        constraintSet3.applyTo(roundedConstraintLayout9);
        ConstraintSet constraintSet4 = this.H;
        RoundedConstraintLayout roundedConstraintLayout10 = this.f19060r;
        if (roundedConstraintLayout10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        constraintSet4.applyTo(roundedConstraintLayout10);
        GiphySearchBar giphySearchBar = this.f19062t;
        if (giphySearchBar != null) {
            GPHSettings gPHSettings5 = this.f19055m;
            if (gPHSettings5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
            }
            if (gPHSettings5.getGridType() != GridType.waterfall && ((activity = getActivity()) == null || (resources = activity.getResources()) == null || (configuration = resources.getConfiguration()) == null || configuration.orientation != 2)) {
                z9 = false;
            }
            giphySearchBar.setHideKeyboardOnSearch(z9);
        }
        GPHTouchInterceptor gPHTouchInterceptor5 = this.f19059q;
        if (gPHTouchInterceptor5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerView");
        }
        return gPHTouchInterceptor5;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f19043b1 = null;
        C1();
        E1();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        Timber.e("onDestroyView", new Object[0]);
        if (!this.f19049g1) {
            SmartGridRecyclerView smartGridRecyclerView = this.f19065w;
            if (smartGridRecyclerView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gifsRecyclerView");
            }
            smartGridRecyclerView.getGifTrackingManager$giphy_ui_2_1_9_release().r();
        }
        this.K.cancel();
        this.L.cancel();
        this.M.cancel();
        this.K.removeAllUpdateListeners();
        this.K.removeAllListeners();
        this.L.removeAllUpdateListeners();
        this.L.removeAllListeners();
        this.M.removeAllUpdateListeners();
        this.M.removeAllListeners();
        this.A = null;
        GiphySearchBar giphySearchBar = this.f19062t;
        if (giphySearchBar != null) {
            giphySearchBar.i();
        }
        ImageView imageView = this.f19063u;
        if (imageView != null) {
            imageView.setOnClickListener(null);
        }
        GPHTouchInterceptor gPHTouchInterceptor = this.f19059q;
        if (gPHTouchInterceptor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerView");
        }
        gPHTouchInterceptor.removeAllViews();
        this.B = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@m8.g DialogInterface dialog) {
        b bVar;
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        if (!this.N && (bVar = this.f19043b1) != null) {
            bVar.a(this.O);
        }
        super.onDismiss(dialog);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.giphy.sdk.ui.views.k kVar = this.E;
        if (kVar != null) {
            kVar.Y();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.giphy.sdk.ui.views.k kVar = this.E;
        if (kVar != null) {
            kVar.Z();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@m8.g Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        Timber.e("onSaveInstanceState", new Object[0]);
        this.f19049g1 = true;
        outState.putBoolean(V1, true);
        outState.putParcelable(f19034b2, this.O);
        super.onSaveInstanceState(outState);
    }

    @Override // androidx.fragment.app.Fragment
    @SuppressLint({"ClickableViewAccessibility"})
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Window window;
        Window window2;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        GiphySearchBar giphySearchBar = this.f19062t;
        if (giphySearchBar != null) {
            giphySearchBar.setQueryListener(new s(this));
        }
        GiphySearchBar giphySearchBar2 = this.f19062t;
        if (giphySearchBar2 != null) {
            giphySearchBar2.setOnSearchClickAction(new t(this));
        }
        GPHTouchInterceptor gPHTouchInterceptor = this.f19059q;
        if (gPHTouchInterceptor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerView");
        }
        gPHTouchInterceptor.setDragAccumulator(new u(this));
        GPHTouchInterceptor gPHTouchInterceptor2 = this.f19059q;
        if (gPHTouchInterceptor2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerView");
        }
        gPHTouchInterceptor2.setDragRelease(new v(this));
        GPHTouchInterceptor gPHTouchInterceptor3 = this.f19059q;
        if (gPHTouchInterceptor3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerView");
        }
        gPHTouchInterceptor3.setTouchOutside(new w(this));
        GPHSettings gPHSettings = this.f19055m;
        if (gPHSettings == null) {
            Intrinsics.throwUninitializedPropertyAccessException("giphySettings");
        }
        if (gPHSettings.getGridType() == GridType.carousel) {
            Dialog dialog = getDialog();
            if (dialog != null && (window2 = dialog.getWindow()) != null) {
                window2.setSoftInputMode(4);
            }
        } else {
            Dialog dialog2 = getDialog();
            if (dialog2 != null && (window = dialog2.getWindow()) != null) {
                window.setSoftInputMode(19);
            }
        }
        view.addOnLayoutChangeListener(new x());
        RoundedConstraintLayout roundedConstraintLayout = this.f19060r;
        if (roundedConstraintLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        roundedConstraintLayout.setBackgroundColor(0);
        RoundedConstraintLayout roundedConstraintLayout2 = this.f19060r;
        if (roundedConstraintLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        roundedConstraintLayout2.setVisibility(4);
        RoundedConstraintLayout roundedConstraintLayout3 = this.f19061s;
        if (roundedConstraintLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseViewOverlay");
        }
        roundedConstraintLayout3.setVisibility(4);
        RoundedConstraintLayout roundedConstraintLayout4 = this.f19060r;
        if (roundedConstraintLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseView");
        }
        ViewCompat.setElevation(roundedConstraintLayout4, this.f19047f);
        RoundedConstraintLayout roundedConstraintLayout5 = this.f19061s;
        if (roundedConstraintLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseViewOverlay");
        }
        ViewCompat.setElevation(roundedConstraintLayout5, this.f19047f);
        GPHTouchInterceptor gPHTouchInterceptor4 = this.f19059q;
        if (gPHTouchInterceptor4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerView");
        }
        gPHTouchInterceptor4.setOnClickListener(new y());
        m2();
    }

    @m8.h
    protected final h2.b t1() {
        return this.B;
    }

    @m8.h
    public final b v1() {
        return this.f19043b1;
    }
}
