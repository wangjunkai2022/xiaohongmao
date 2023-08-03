.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;
.super Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/t;
.source "EditProfileFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/t<",
        "Le5/f1;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/e;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditProfileFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,370:1\n106#2,15:371\n1#3:386\n254#4,2:387\n37#5:389\n36#5,3:390\n37#5:393\n36#5,3:394\n37#5:397\n36#5,3:398\n37#5:401\n36#5,3:402\n*S KotlinDebug\n*F\n+ 1 EditProfileFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment\n*L\n42#1:371,15\n113#1:387,2\n263#1:389\n263#1:390,3\n190#1:393\n190#1:394,3\n198#1:397\n198#1:398,3\n207#1:401\n207#1:402,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008T\u0010UJ\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0004H\u0002J\u0008\u0010\n\u001a\u00020\u0006H\u0002J\u0008\u0010\u000b\u001a\u00020\u0006H\u0002J\u0008\u0010\u000c\u001a\u00020\u0006H\u0002J\u0008\u0010\r\u001a\u00020\u0006H\u0002J\u0008\u0010\u000e\u001a\u00020\u0006H\u0002J\u0008\u0010\u000f\u001a\u00020\u0006H\u0002J \u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0008\u0010\u0016\u001a\u00020\u0006H\u0002J\u0008\u0010\u0017\u001a\u00020\u0006H\u0002J\u0016\u0010\u001b\u001a\u00020\u00062\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J\u0008\u0010\u001c\u001a\u00020\u0006H\u0002J\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u001a\u0010$\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 2\u0008\u0010#\u001a\u0004\u0018\u00010\"H\u0016J\u001a\u0010)\u001a\u00020\u00062\u0006\u0010&\u001a\u00020%2\u0008\u0010(\u001a\u0004\u0018\u00010\'H\u0016J\u0010\u0010+\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0003H\u0014R\u001b\u00101\u001a\u00020,8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R$\u00108\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u001a\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u0019098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u001a\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u0019098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010;R\u001a\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u0019098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010;R?\u0010F\u001a&\u0012\u000c\u0012\n B*\u0004\u0018\u00010\u00190\u0019 B*\u0012\u0012\u000e\u0008\u0001\u0012\n B*\u0004\u0018\u00010\u00190\u00190A0A8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008C\u0010.\u001a\u0004\u0008D\u0010ER.\u0010J\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0019 B*\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010A0A0G8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\"\u0010M\u001a\u0010\u0012\u000c\u0012\n B*\u0004\u0018\u00010K0K0G8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008L\u0010IR\"\u0010O\u001a\u0010\u0012\u000c\u0012\n B*\u0004\u0018\u00010\u001d0\u001d0G8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008N\u0010IR\"\u0010Q\u001a\u0010\u0012\u000c\u0012\n B*\u0004\u0018\u00010K0K0G8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010IR\"\u0010S\u001a\u0010\u0012\u000c\u0012\n B*\u0004\u0018\u00010K0K0G8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008R\u0010I\u00a8\u0006V"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;",
        "Le5/f1;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/e;",
        "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
        "w1",
        "",
        "o1",
        "user",
        "y1",
        "j1",
        "h1",
        "i1",
        "g1",
        "f1",
        "X0",
        "",
        "monthIndex",
        "yearIndex",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;",
        "dayWheel",
        "n1",
        "c1",
        "C1",
        "",
        "",
        "permissions",
        "s1",
        "p1",
        "Landroid/net/Uri;",
        "uri",
        "A1",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "v1",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "e",
        "r1",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;",
        "k",
        "Lkotlin/Lazy;",
        "m1",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;",
        "viewModel",
        "l",
        "Landroid/net/Uri;",
        "l1",
        "()Landroid/net/Uri;",
        "x1",
        "(Landroid/net/Uri;)V",
        "photoURI",
        "Ljava/util/ArrayList;",
        "m",
        "Ljava/util/ArrayList;",
        "yData",
        "n",
        "mData",
        "o",
        "dData",
        "",
        "kotlin.jvm.PlatformType",
        "p",
        "k1",
        "()[Ljava/lang/String;",
        "emotions",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "q",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "requestPermissions",
        "Landroid/content/Intent;",
        "r",
        "openSettings",
        "s",
        "launchCamera",
        "t",
        "openGallery",
        "u",
        "startUCrop",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final k:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private l:Landroid/net/Uri;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final p:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final q:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final r:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final s:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final t:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final u:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/t;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    const-class v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->k:Lkotlin/Lazy;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v3, 0x79e

    if-gt v3, v1, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v3, v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->m:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    const/16 v1, 0xd

    if-ge v2, v1, :cond_2

    const/16 v1, 0xa

    if-ge v2, v1, :cond_1

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_2
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->n:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->o:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$l;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$l;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->p:Lkotlin/Lazy;

    .line 14
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$x;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$x;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$y;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$y;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$z;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$z;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    invoke-static {p0, v0, v1, v2}, Lp5/h;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->q:Landroidx/activity/result/ActivityResultLauncher;

    .line 15
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 16
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/k;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/k;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026t()\n    ) { takePhoto() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->r:Landroidx/activity/result/ActivityResultLauncher;

    .line 17
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$TakePicture;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$TakePicture;-><init>()V

    .line 18
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/l;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/l;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026ropActivity(photoURI!!) }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->s:Landroidx/activity/result/ActivityResultLauncher;

    .line 19
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 20
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/i;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/i;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026        }\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->t:Landroidx/activity/result/ActivityResultLauncher;

    .line 21
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 22
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/j;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/j;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026ieve_cropped_image)\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->u:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static synthetic A0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->B1(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method private final A1(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->u:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/qennnsad/aknkaksd/util/l;->q(Landroid/app/Activity;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic B0(Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Le5/u;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;II)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->a1(Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Le5/u;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;II)V

    return-void
.end method

.method private static final B1(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-static {p1}, Lcom/yalantis/ucrop/d;->e(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "UCrop.getOutput(it)?.path ?: return@let"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->m1()Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;->B(Ljava/lang/String;)V

    .line 4
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    if-nez p0, :cond_3

    const p0, 0x7f130412

    const/4 p1, 0x0

    const/4 v1, 0x2

    .line 5
    invoke-static {p0, p1, v1, v0}, Lcom/qennnsad/aknkaksd/util/toast/a;->e(IZILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static synthetic C0(Le5/u;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->Y0(Le5/u;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/app/Dialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final C1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/l;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->p1()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->q:Landroidx/activity/result/ActivityResultLauncher;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic D0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->u1(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic E0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->z1(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic F0(Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Le5/u;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;II)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->Z0(Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Le5/u;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;II)V

    return-void
.end method

.method public static synthetic G0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->q1(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic H0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->X0()V

    return-void
.end method

.method public static final synthetic I0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->c1()V

    return-void
.end method

.method public static final synthetic J0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/app/Dialog;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->e1(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/app/Dialog;I)V

    return-void
.end method

.method public static final synthetic K0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->g1()V

    return-void
.end method

.method public static final synthetic L0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->h1()V

    return-void
.end method

.method public static final synthetic M0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->i1()V

    return-void
.end method

.method public static final synthetic N0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->j1()V

    return-void
.end method

.method public static final synthetic O0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->t:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method public static final synthetic P0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->r:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method public static final synthetic Q0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->q:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method public static final synthetic R0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic S0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->p1()V

    return-void
.end method

.method public static final synthetic T0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->s1(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic U0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->w1()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic V0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->y1(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)V

    return-void
.end method

.method public static final synthetic W0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->C1()V

    return-void
.end method

.method private final X0()V
    .locals 10

    .line 1
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 2
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 3
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 4
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->m:Ljava/util/ArrayList;

    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->n:Ljava/util/ArrayList;

    iget v2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Le5/u;->c(Landroid/view/LayoutInflater;)Le5/u;

    move-result-object v1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v8, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1400fd

    invoke-direct {v8, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 7
    invoke-virtual {v1}, Le5/u;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 8
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    const/4 v7, -0x2

    .line 9
    invoke-virtual {v0, v2, v7}, Landroid/view/Window;->setLayout(II)V

    const/16 v2, 0x50

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 11
    :cond_0
    new-instance v9, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/f;

    move-object v0, v9

    move-object v2, p0

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/f;-><init>(Le5/u;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/app/Dialog;)V

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 12
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final Y0(Le5/u;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    const-string v0, "$dialogBinding"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$monthIndex"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$yearIndex"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dayIndex"

    move-object/from16 v13, p4

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v6, v7, Le5/u;->c:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/d;

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v8, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->o:Ljava/util/ArrayList;

    const/4 v14, 0x0

    new-array v3, v14, [Ljava/lang/String;

    .line 3
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v15, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/d;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;->setViewAdapter(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/m;)V

    .line 5
    invoke-virtual {v6, v14}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;->setCurrentItem(I)V

    .line 6
    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/o;

    move-object v0, v5

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object v14, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/o;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v6, v14}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;->g(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/g;)V

    .line 7
    iget-object v14, v7, Le5/u;->j:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;

    .line 8
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/d;

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v8, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->m:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    .line 9
    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/d;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v14, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;->setViewAdapter(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/m;)V

    .line 11
    invoke-virtual {v14, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;->setCurrentItem(I)V

    .line 12
    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/n;

    move-object v0, v6

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p0

    move-object/from16 v5, p5

    move-object v13, v6

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/n;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Le5/u;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v14, v13}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;->g(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/g;)V

    .line 13
    iget-object v13, v7, Le5/u;->f:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;

    .line 14
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/d;

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v8, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->n:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    .line 15
    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/d;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v13, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;->setViewAdapter(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/m;)V

    .line 17
    invoke-virtual {v13, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;->setCurrentItem(I)V

    .line 18
    new-instance v14, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/m;

    move-object v0, v14

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/m;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Le5/u;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v13, v14}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;->g(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/g;)V

    .line 19
    iget-object v0, v7, Le5/u;->g:Landroid/widget/TextView;

    const-string v1, "ok"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$a;

    invoke-direct {v3, v11, v8, v12}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/app/Dialog;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 20
    iget-object v11, v7, Le5/u;->b:Landroid/widget/TextView;

    const-string v0, "cancel"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$b;

    invoke-direct {v14, v12}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$b;-><init>(Landroid/app/Dialog;)V

    const-wide/16 v12, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 21
    iget v0, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v2, v7, Le5/u;->c:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;

    const-string v3, "day"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->n1(IILcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;)V

    return-void
.end method

.method private static final Z0(Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Le5/u;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;II)V
    .locals 0

    const-string p6, "$yearIndex"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "this$0"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$monthIndex"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$this_with"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$result"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$dayIndex"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput p8, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 2
    iget p6, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object p3, p3, Le5/u;->c:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;

    const-string p7, "day"

    invoke-static {p3, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p6, p8, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->n1(IILcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;)V

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p6, p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->m:Ljava/util/ArrayList;

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p6, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->n:Ljava/util/ArrayList;

    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->o:Ljava/util/ArrayList;

    iget p1, p5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method private static final a1(Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Le5/u;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;II)V
    .locals 0

    const-string p6, "$monthIndex"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "this$0"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$yearIndex"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$this_with"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$result"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$dayIndex"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput p8, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 2
    iget p6, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object p3, p3, Le5/u;->c:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;

    const-string p7, "day"

    invoke-static {p3, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p8, p6, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->n1(IILcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;)V

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p6, p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->m:Ljava/util/ArrayList;

    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->n:Ljava/util/ArrayList;

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->o:Ljava/util/ArrayList;

    iget p1, p5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method private static final b1(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;II)V
    .locals 0

    const-string p5, "$dayIndex"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$result"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "this$0"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$yearIndex"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$monthIndex"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput p7, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p6, p2, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->m:Ljava/util/ArrayList;

    iget p3, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->n:Ljava/util/ArrayList;

    iget p4, p4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->o:Ljava/util/ArrayList;

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method private final c1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Le5/w;->c(Landroid/view/LayoutInflater;)Le5/w;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1400fd

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {v0}, Le5/w;->b()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 5
    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    const/16 v3, 0x50

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 7
    :cond_0
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/g;

    invoke-direct {v2, v0, p0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/g;-><init>(Le5/w;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 8
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final d1(Le5/w;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "$dialogBinding"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "this$0"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$this_apply"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Le5/f1;

    iget-object v3, v3, Le5/f1;->s:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v4, v0, Le5/w;->j:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v0, Le5/w;->p:Landroid/widget/ImageView;

    iget-object v4, v0, Le5/w;->j:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    goto :goto_0

    .line 3
    :cond_0
    iget-object v4, v0, Le5/w;->e:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v0, Le5/w;->d:Landroid/widget/ImageView;

    iget-object v4, v0, Le5/w;->e:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    goto :goto_0

    .line 4
    :cond_1
    iget-object v4, v0, Le5/w;->g:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v0, Le5/w;->f:Landroid/widget/ImageView;

    iget-object v4, v0, Le5/w;->g:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    goto :goto_0

    .line 5
    :cond_2
    iget-object v4, v0, Le5/w;->i:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v3, v0, Le5/w;->h:Landroid/widget/ImageView;

    iget-object v4, v0, Le5/w;->i:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    goto :goto_0

    .line 6
    :cond_3
    iget-object v4, v0, Le5/w;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Le5/w;->b:Landroid/widget/ImageView;

    iget-object v4, v0, Le5/w;->c:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 7
    invoke-static {v3, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 8
    :goto_0
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    const v5, 0x7f080472

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    :cond_5
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0602fb

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    :cond_6
    iget-object v5, v0, Le5/w;->o:Landroid/widget/RelativeLayout;

    const-string v3, "popupFeelNo"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$c;

    invoke-direct {v8, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/app/Dialog;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 11
    iget-object v11, v0, Le5/w;->l:Landroid/widget/RelativeLayout;

    const-string v3, "popupFeelLonely"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v12, 0x0

    new-instance v14, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$d;

    invoke-direct {v14, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/app/Dialog;)V

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 12
    iget-object v3, v0, Le5/w;->m:Landroid/widget/RelativeLayout;

    const-string v4, "popupFeelLove"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$e;

    invoke-direct {v6, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/app/Dialog;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 13
    iget-object v9, v0, Le5/w;->n:Landroid/widget/RelativeLayout;

    const-string v3, "popupFeelMarried"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    new-instance v12, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$f;

    invoke-direct {v12, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$f;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/app/Dialog;)V

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 14
    iget-object v0, v0, Le5/w;->k:Landroid/widget/RelativeLayout;

    const-string v3, "popupFeelGay"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$g;

    invoke-direct {v5, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$g;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/app/Dialog;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-wide v1, v3

    move-object v3, v5

    move v4, v6

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private static final e1(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/app/Dialog;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->m1()Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;->w(I)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private final f1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/f1;

    iget-object v0, v0, Le5/f1;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0a0794

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :goto_0
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->w1()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getSex()I

    move-result v1

    if-ne v1, v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->m1()Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;->x(I)V

    return-void
.end method

.method private final g1()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->w1()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getCity()Ljava/lang/String;

    move-result-object v4

    .line 2
    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$h;

    invoke-direct {v8, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$h;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    const-string v2, "\u7f16\u8f91\u5bb6\u4e61"

    const-string v3, "\u8bf7\u8f93\u5165\u4f60\u7684\u5bb6\u4e61"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x38

    const/4 v10, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v10}, Lcom/qennnsad/aknkaksd/util/l;->J(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/text/InputFilter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final h1()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->w1()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getIntro()Ljava/lang/String;

    move-result-object v4

    .line 2
    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$i;

    invoke-direct {v8, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$i;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    const-string v2, "\u7f16\u8f91\u7b7e\u540d"

    const-string v3, "\u8bf7\u8f93\u5165\u4f60\u7684\u7b7e\u540d"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x38

    const/4 v10, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v10}, Lcom/qennnsad/aknkaksd/util/l;->J(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/text/InputFilter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final i1()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->w1()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getName_card()Ljava/lang/String;

    move-result-object v4

    .line 2
    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$j;

    invoke-direct {v8, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$j;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    const-string v2, "\u7f16\u8f91\u540d\u7247"

    const-string v3, "\u8bf7\u8f93\u5165\u8054\u7cfb\u65b9\u5f0f \u5982:\u5fae\u4fe1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x38

    const/4 v10, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v10}, Lcom/qennnsad/aknkaksd/util/l;->J(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/text/InputFilter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final j1()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->w1()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    .line 2
    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$k;

    invoke-direct {v8, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$k;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    const-string v2, "\u7f16\u8f91\u6635\u79f0"

    const-string v3, "\u8bf7\u8f93\u5165\u4f60\u7684\u6635\u79f0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x38

    const/4 v10, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v10}, Lcom/qennnsad/aknkaksd/util/l;->J(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/text/InputFilter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final k1()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->p:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private final n1(IILcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "mData[monthIndex]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "yData[yearIndex]"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x605

    const/16 v2, 0x30

    const-string v3, ""

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-eq v0, v1, :cond_a

    const/16 v1, 0x61f

    if-eq v0, v1, :cond_9

    const/16 v1, 0x621

    if-eq v0, v1, :cond_8

    const/16 v1, 0x607

    if-eq v0, v1, :cond_7

    const/16 v1, 0x608

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string p2, "03"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_4

    :pswitch_1
    const-string v0, "02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_2

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_4

    :cond_2
    :goto_0
    const/16 p1, 0x1e

    if-ge v5, p1, :cond_f

    .line 6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->o:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/StringBuilder;

    if-ge v5, v4, :cond_3

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    const/16 p1, 0x1d

    if-ge v5, p1, :cond_f

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->o:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/StringBuilder;

    if-ge v5, v4, :cond_5

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :pswitch_2
    const-string p2, "01"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_4

    :cond_6
    const-string p2, "08"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_4

    :cond_7
    const-string p2, "07"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_4

    :cond_8
    const-string p2, "12"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_4

    :cond_9
    const-string p2, "10"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_a
    const-string p2, "05"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    :cond_b
    :goto_4
    const/16 p1, 0x1f

    if-ge v5, p1, :cond_f

    .line 9
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->o:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/StringBuilder;

    if-ge v5, v4, :cond_c

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_c
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    :goto_6
    const/16 p1, 0x20

    if-ge v5, p1, :cond_f

    .line 10
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->o:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/StringBuilder;

    if-ge v5, v4, :cond_e

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_e
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 11
    :cond_f
    invoke-virtual {p3}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;->getViewAdapter()Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/m;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.ArrayWheelAdapter<kotlin.String>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/d;

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->o:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 12
    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/d;->q([Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p3, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;->setCurrentItem(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x601
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final o1()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lq5/b;->i(ZLandroid/app/Activity;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/f1;

    .line 3
    iget-object v1, v0, Le5/f1;->d:Landroid/widget/RelativeLayout;

    const-string v2, "editProfileRlAvatar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$m;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$m;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    iget-object v7, v0, Le5/f1;->f:Landroid/widget/RelativeLayout;

    const-string v1, "editProfileRlId"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$n;

    invoke-direct {v10, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$n;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    iget-object v1, v0, Le5/f1;->i:Landroid/widget/RelativeLayout;

    const-string v2, "editProfileRlNickname"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$o;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$o;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    const-wide/16 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 6
    iget-object v7, v0, Le5/f1;->g:Landroid/widget/RelativeLayout;

    const-string v1, "editProfileRlIntroduction"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$p;

    invoke-direct {v10, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$p;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    invoke-static/range {v7 .. v12}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 7
    iget-object v1, v0, Le5/f1;->h:Landroid/widget/RelativeLayout;

    const-string v2, "editProfileRlNamecard"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$q;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$q;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    const-wide/16 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 8
    iget-object v7, v0, Le5/f1;->x:Landroid/widget/RelativeLayout;

    const-string v1, "userbirthday"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$r;

    invoke-direct {v10, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$r;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    invoke-static/range {v7 .. v12}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    iget-object v1, v0, Le5/f1;->j:Landroid/widget/RelativeLayout;

    const-string v2, "editProfileRlState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$s;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$s;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    const-wide/16 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 10
    iget-object v7, v0, Le5/f1;->e:Landroid/widget/RelativeLayout;

    const-string v1, "editProfileRlHometown"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$t;

    invoke-direct {v10, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$t;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    invoke-static/range {v7 .. v12}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 11
    iget-object v1, v0, Le5/f1;->u:Landroid/widget/ImageButton;

    const-string v0, "imgbtnToolbarBack"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$u;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$u;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private final p1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/l;->o(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->l:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->s:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final q1(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->l:Landroid/net/Uri;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->A1(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private final s1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$v;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$v;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Ljava/util/List;)V

    invoke-static {v0, p1, v1}, Lp5/e;->p(Landroid/app/Activity;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final t1(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->A1(Landroid/net/Uri;)V

    goto :goto_1

    :cond_1
    const p0, 0x7f130413

    const/4 p1, 0x0

    const/4 v1, 0x2

    .line 4
    invoke-static {p0, p1, v1, v0}, Lcom/qennnsad/aknkaksd/util/toast/a;->e(IZILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static final u1(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->C1()V

    return-void
.end method

.method private final w1()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->A()Lkotlinx/coroutines/flow/t;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/t;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    return-object v0
.end method

.method public static synthetic x0(Le5/w;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->d1(Le5/w;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/app/Dialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic y0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->t1(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method private final y1(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/f1;

    .line 2
    iget-object v1, v0, Le5/f1;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, v0, Le5/f1;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, v0, Le5/f1;->o:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getIntro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, v0, Le5/f1;->s:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->k1()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "emotions"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getEmotion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v4

    if-gt v3, v4, :cond_1

    aget-object v2, v2, v3

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Le5/f1;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, v0, Le5/f1;->k:Landroid/widget/TextView;

    sget-object v2, Lcom/qennnsad/aknkaksd/util/o;->a:Lcom/qennnsad/aknkaksd/util/o$a;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getBirthday()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qennnsad/aknkaksd/util/o$a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, v0, Le5/f1;->h:Landroid/widget/RelativeLayout;

    const-string v2, "editProfileRlNamecard"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getIsanchor()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    .line 9
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v1, v0, Le5/f1;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getName_card()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, v0, Le5/f1;->z:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getSex()I

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 12
    iget-object v1, v0, Le5/f1;->y:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getSex()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 13
    iget-object v1, v0, Le5/f1;->c:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/h;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/h;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 14
    iget-object v0, v0, Le5/f1;->b:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->m1()Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;->s()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getAvatar()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const v1, 0x7f0803e2

    .line 16
    invoke-static {v0, p1, v4, v1, v1}, Lcom/qennnsad/aknkaksd/util/img/e;->g(Landroid/widget/ImageView;Landroid/net/Uri;ZII)V

    return-void
.end method

.method public static synthetic z0(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;II)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->b1(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/WheelView;II)V

    return-void
.end method

.method private static final z1(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/widget/RadioGroup;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->f1()V

    return-void
.end method


# virtual methods
.method public bridge synthetic e0()Lcom/qennnsad/aknkaksd/presentation/common/l;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->m1()Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->v1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/f1;

    move-result-object p1

    return-object p1
.end method

.method public final l1()Landroid/net/Uri;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->l:Landroid/net/Uri;

    return-object v0
.end method

.method public m1()Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;

    return-object v0
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/e;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->r1(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/e;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->o1()V

    .line 3
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$w;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$w;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LifecycleCoroutineScope;->launchWhenCreated(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method protected r1(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/e;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/e;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public v1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/f1;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Le5/f1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/f1;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final x1(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->l:Landroid/net/Uri;

    return-void
.end method
