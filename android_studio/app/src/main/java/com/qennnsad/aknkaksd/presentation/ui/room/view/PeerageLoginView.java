package com.qennnsad.aknkaksd.presentation.ui.room.view;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import com.didi.live.spring.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.qennnsad.aknkaksd.data.bean.websocket.PeerageLogin;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.util.s1;

/* loaded from: classes3.dex */
public class PeerageLoginView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private SimpleDraweeView f54291a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f54292b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f54293c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f54294d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f54295e;

    /* renamed from: f  reason: collision with root package name */
    AnimationSet f54296f;

    public PeerageLoginView(@NonNull Context context) {
        super(context);
        b();
    }

    private void b() {
        AnimationSet animationSet = new AnimationSet(true);
        this.f54296f = animationSet;
        animationSet.setInterpolator(new AccelerateDecelerateInterpolator());
        this.f54296f.addAnimation(new TranslateAnimation(1, 2.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f));
        this.f54296f.setDuration(1500L);
        this.f54296f.setStartOffset(500L);
        FrameLayout.inflate(getContext(), R.layout.view_peerage_login, this);
        this.f54291a = (SimpleDraweeView) findViewById(R.id.peerage_user_icon);
        this.f54292b = (ImageView) findViewById(R.id.peerage_icon);
        this.f54293c = (TextView) findViewById(R.id.peerage_name);
        this.f54294d = (TextView) findViewById(R.id.peerage_user_name);
        this.f54295e = (TextView) findViewById(R.id.peerage_info);
    }

    public void a() {
        if (getVisibility() == 0) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(500L);
            startAnimation(alphaAnimation);
            setVisibility(8);
        }
    }

    public void c(m mVar, PeerageLogin peerageLogin) {
        if (peerageLogin != null) {
            this.f54291a.setImageURI(mVar.i(peerageLogin.getAvatar()));
            s1.B(this.f54292b, Integer.valueOf(peerageLogin.getPeerage_id()));
            this.f54293c.setText(peerageLogin.getPeerage_name());
            this.f54294d.setText(peerageLogin.getNick_name());
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("乘坐" + peerageLogin.getMount_name() + "来了");
            spannableStringBuilder.setSpan(new ForegroundColorSpan((int) SupportMenu.CATEGORY_MASK), 2, peerageLogin.getMount_name().length() + 2, 33);
            this.f54295e.setText(spannableStringBuilder);
        }
    }

    public void d() {
        setVisibility(0);
        startAnimation(this.f54296f);
    }

    public PeerageLoginView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    public PeerageLoginView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        b();
    }
}
