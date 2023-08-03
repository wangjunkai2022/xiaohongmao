package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.im.freechat.utils.MessageEditText;

/* compiled from: LayoutChatDetailsBottomBinding.java */
/* loaded from: classes3.dex */
public final class n3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62779a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Barrier f62780b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageButton f62781c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageButton f62782d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageButton f62783e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageButton f62784f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageButton f62785g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageButton f62786h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageButton f62787i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f62788j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final View f62789k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final MessageEditText f62790l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final Group f62791m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ImageView f62792n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ImageView f62793o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final ImageView f62794p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ImageView f62795q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f62796r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f62797s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f62798t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f62799u;

    private n3(@NonNull ConstraintLayout constraintLayout, @NonNull Barrier barrier, @NonNull ImageButton imageButton, @NonNull ImageButton imageButton2, @NonNull ImageButton imageButton3, @NonNull ImageButton imageButton4, @NonNull ImageButton imageButton5, @NonNull ImageButton imageButton6, @NonNull ImageButton imageButton7, @NonNull ImageView imageView, @NonNull View view, @NonNull MessageEditText messageEditText, @NonNull Group group, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f62779a = constraintLayout;
        this.f62780b = barrier;
        this.f62781c = imageButton;
        this.f62782d = imageButton2;
        this.f62783e = imageButton3;
        this.f62784f = imageButton4;
        this.f62785g = imageButton5;
        this.f62786h = imageButton6;
        this.f62787i = imageButton7;
        this.f62788j = imageView;
        this.f62789k = view;
        this.f62790l = messageEditText;
        this.f62791m = group;
        this.f62792n = imageView2;
        this.f62793o = imageView3;
        this.f62794p = imageView4;
        this.f62795q = imageView5;
        this.f62796r = textView;
        this.f62797s = textView2;
        this.f62798t = textView3;
        this.f62799u = textView4;
    }

    @NonNull
    public static n3 a(@NonNull View view) {
        int i4 = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i4 = R.id.btnCancelExtra;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btnCancelExtra);
            if (imageButton != null) {
                i4 = R.id.btnEditDone;
                ImageButton imageButton2 = (ImageButton) ViewBindings.findChildViewById(view, R.id.btnEditDone);
                if (imageButton2 != null) {
                    i4 = R.id.btnEmoji;
                    ImageButton imageButton3 = (ImageButton) ViewBindings.findChildViewById(view, R.id.btnEmoji);
                    if (imageButton3 != null) {
                        i4 = R.id.btnMore;
                        ImageButton imageButton4 = (ImageButton) ViewBindings.findChildViewById(view, R.id.btnMore);
                        if (imageButton4 != null) {
                            i4 = R.id.btnRecord;
                            ImageButton imageButton5 = (ImageButton) ViewBindings.findChildViewById(view, R.id.btnRecord);
                            if (imageButton5 != null) {
                                i4 = R.id.btnSend;
                                ImageButton imageButton6 = (ImageButton) ViewBindings.findChildViewById(view, R.id.btnSend);
                                if (imageButton6 != null) {
                                    i4 = R.id.btnShowRecordVideo;
                                    ImageButton imageButton7 = (ImageButton) ViewBindings.findChildViewById(view, R.id.btnShowRecordVideo);
                                    if (imageButton7 != null) {
                                        i4 = R.id.cancelAttachment;
                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cancelAttachment);
                                        if (imageView != null) {
                                            i4 = R.id.divider;
                                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
                                            if (findChildViewById != null) {
                                                i4 = R.id.etMessage;
                                                MessageEditText messageEditText = (MessageEditText) ViewBindings.findChildViewById(view, R.id.etMessage);
                                                if (messageEditText != null) {
                                                    i4 = R.id.groupExtra;
                                                    Group group = (Group) ViewBindings.findChildViewById(view, R.id.groupExtra);
                                                    if (group != null) {
                                                        i4 = R.id.ivAttachmentPreview;
                                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivAttachmentPreview);
                                                        if (imageView2 != null) {
                                                            i4 = R.id.ivAttachmentVideo;
                                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivAttachmentVideo);
                                                            if (imageView3 != null) {
                                                                i4 = R.id.ivExtra;
                                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivExtra);
                                                                if (imageView4 != null) {
                                                                    i4 = R.id.ivExtraPreview;
                                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivExtraPreview);
                                                                    if (imageView5 != null) {
                                                                        i4 = R.id.tvContent;
                                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvContent);
                                                                        if (textView != null) {
                                                                            i4 = R.id.tvExtraSender;
                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvExtraSender);
                                                                            if (textView2 != null) {
                                                                                i4 = R.id.tvForward;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvForward);
                                                                                if (textView3 != null) {
                                                                                    i4 = R.id.tvReply;
                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvReply);
                                                                                    if (textView4 != null) {
                                                                                        return new n3((ConstraintLayout) view, barrier, imageButton, imageButton2, imageButton3, imageButton4, imageButton5, imageButton6, imageButton7, imageView, findChildViewById, messageEditText, group, imageView2, imageView3, imageView4, imageView5, textView, textView2, textView3, textView4);
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static n3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.layout_chat_details_bottom, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62779a;
    }
}
