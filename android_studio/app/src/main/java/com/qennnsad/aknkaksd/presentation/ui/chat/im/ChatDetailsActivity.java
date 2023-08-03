package com.qennnsad.aknkaksd.presentation.ui.chat.im;

import android.os.Bundle;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.lifecycle.LifecycleOwnerKt;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.module.auth.AuthActivity;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.s0;

/* compiled from: ChatDetailsActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016R\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "onBackPressed", "", "onSupportNavigateUp", "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;", "d", "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;", "N", "()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;", "P", "(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;)V", "navigator", "Lg5/a;", "localDataManager", "Lg5/a;", "M", "()Lg5/a;", "O", "(Lg5/a;)V", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class ChatDetailsActivity extends Hilt_ChatDetailsActivity {
    @u7.a

    /* renamed from: d  reason: collision with root package name */
    public l f52539d;
    @u7.a

    /* renamed from: e  reason: collision with root package name */
    public g5.a f52540e;

    /* compiled from: ChatDetailsActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.chat.im.ChatDetailsActivity$onCreate$1", f = "ChatDetailsActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52541a;

        a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f52541a == 0) {
                ResultKt.throwOnFailure(obj);
                if (ChatDetailsActivity.this.M().C() == null) {
                    AuthActivity.a.d(AuthActivity.f50991k, ChatDetailsActivity.this, null, false, 3, null);
                    ChatDetailsActivity.this.finish();
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @m8.g
    public final g5.a M() {
        g5.a aVar = this.f52540e;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localDataManager");
        return null;
    }

    @m8.g
    public final l N() {
        l lVar = this.f52539d;
        if (lVar != null) {
            return lVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("navigator");
        return null;
    }

    public final void O(@m8.g g5.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f52540e = aVar;
    }

    public final void P(@m8.g l lVar) {
        Intrinsics.checkNotNullParameter(lVar, "<set-?>");
        this.f52539d = lVar;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (getSupportFragmentManager().getBackStackEntryCount() > 1) {
            getSupportFragmentManager().popBackStack();
        } else {
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@m8.h Bundle bundle) {
        super.onCreate(bundle);
        kotlinx.coroutines.l.f(LifecycleOwnerKt.getLifecycleScope(this), null, null, new a(null), 3, null);
        setContentView(R.layout.activity_chat_details);
        N().b(getIntent().getExtras(), false, false);
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        n4.a aVar = new n4.a(WindowInsetsCompat.Type.systemBars(), WindowInsetsCompat.Type.ime());
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.fragment_container_view);
        ViewCompat.setWindowInsetsAnimationCallback(viewGroup, aVar);
        ViewCompat.setOnApplyWindowInsetsListener(viewGroup, aVar);
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public boolean onSupportNavigateUp() {
        onBackPressed();
        return true;
    }
}
