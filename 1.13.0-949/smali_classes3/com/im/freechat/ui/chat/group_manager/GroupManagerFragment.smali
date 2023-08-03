.class public final Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;
.super Lcom/im/freechat/base/f;
.source "GroupManagerFragment.kt"

# interfaces
.implements Lcom/im/freechat/ui/contacts/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/f<",
        "Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;",
        "Lf4/s;",
        ">;",
        "Lcom/im/freechat/ui/contacts/e;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGroupManagerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupManagerFragment.kt\ncom/im/freechat/ui/chat/group_manager/GroupManagerFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,421:1\n40#2,5:422\n40#2,5:427\n40#2,5:432\n65#3,16:437\n93#3,3:453\n254#4,2:456\n254#4,2:458\n254#4,2:460\n254#4,2:462\n254#4,2:464\n254#4,2:466\n254#4,2:468\n254#4,2:470\n254#4,2:472\n252#4:474\n254#4,2:475\n254#4,2:477\n254#4,2:479\n254#4,2:485\n254#4,2:487\n254#4,2:489\n37#5:481\n36#5,3:482\n1549#6:491\n1620#6,3:492\n*S KotlinDebug\n*F\n+ 1 GroupManagerFragment.kt\ncom/im/freechat/ui/chat/group_manager/GroupManagerFragment\n*L\n47#1:422,5\n51#1:427,5\n52#1:432,5\n193#1:437,16\n193#1:453,3\n264#1:456,2\n265#1:458,2\n266#1:460,2\n267#1:462,2\n271#1:464,2\n272#1:466,2\n274#1:468,2\n275#1:470,2\n311#1:472,2\n326#1:474\n342#1:475,2\n343#1:477,2\n344#1:479,2\n79#1:485,2\n83#1:487,2\n84#1:489,2\n384#1:481\n384#1:482,3\n143#1:491\n143#1:492,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008S\u0010TJ\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000c\u001a\u00020\u0005H\u0002J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u001a\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010\u0015\u001a\u00020\u0005H\u0014J\u000e\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0016J\u0018\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0016H\u0016J\u000e\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0016J\u0010\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u0006\u0010 \u001a\u00020\u0005J\u0018\u0010$\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u0011\u001a\u00020#H\u0016J\u0010\u0010(\u001a\u00020\'2\u0006\u0010&\u001a\u00020%H\u0016J\u0008\u0010)\u001a\u00020\u0005H\u0016J\u0008\u0010*\u001a\u00020\u0005H\u0016R\u001b\u00100\u001a\u00020+8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/R\u001b\u00105\u001a\u0002018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010-\u001a\u0004\u00083\u00104R\u001b\u0010:\u001a\u0002068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u0010-\u001a\u0004\u00088\u00109R\u001b\u0010?\u001a\u00020;8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008<\u0010-\u001a\u0004\u0008=\u0010>R\u001b\u0010D\u001a\u00020@8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008A\u0010-\u001a\u0004\u0008B\u0010CR\u0018\u0010H\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR$\u0010M\u001a\u00020\'2\u0006\u0010I\u001a\u00020\'8\u0002@BX\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008J\u0010\u0015\"\u0004\u0008K\u0010LR\"\u0010R\u001a\u0010\u0012\u000c\u0012\n O*\u0004\u0018\u00010E0E0N8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010Q\u00a8\u0006U"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;",
        "Lcom/im/freechat/base/f;",
        "Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;",
        "Lf4/s;",
        "Lcom/im/freechat/ui/contacts/e;",
        "",
        "S0",
        "d1",
        "c1",
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "chat",
        "D0",
        "j1",
        "Lcom/im/freechat/shared/entities/chat/ChatMember;",
        "member",
        "h1",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "f1",
        "Z",
        "Landroid/os/Bundle;",
        "bundle",
        "F0",
        "direction",
        "extras",
        "Z0",
        "a1",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "contact",
        "x",
        "b1",
        "Landroid/view/Menu;",
        "menu",
        "Landroid/view/MenuInflater;",
        "onCreateOptionsMenu",
        "Landroid/view/MenuItem;",
        "item",
        "",
        "onOptionsItemSelected",
        "onResume",
        "onDestroyView",
        "Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;",
        "b",
        "Lkotlin/Lazy;",
        "K0",
        "()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;",
        "viewModel",
        "Lcom/im/freechat/ui/chat/group_manager/c;",
        "c",
        "G0",
        "()Lcom/im/freechat/ui/chat/group_manager/c;",
        "adapter",
        "Lcom/im/freechat/ui/create/choosemember/b;",
        "d",
        "H0",
        "()Lcom/im/freechat/ui/create/choosemember/b;",
        "candidatesAdapter",
        "Lk4/a;",
        "e",
        "J0",
        "()Lk4/a;",
        "pageAdapter",
        "Lcom/im/freechat/ui/contacts/ContactListFragment;",
        "f",
        "I0",
        "()Lcom/im/freechat/ui/contacts/ContactListFragment;",
        "contactsFragment",
        "",
        "g",
        "Ljava/lang/String;",
        "currentGroupAvatar",
        "value",
        "h",
        "g1",
        "(Z)V",
        "editing",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "kotlin.jvm.PlatformType",
        "i",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "pickImage",
        "<init>",
        "()V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final b:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private h:Z

.field private final i:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/f;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 3
    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 4
    iput-object v1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->b:Lkotlin/Lazy;

    .line 5
    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$special$$inlined$inject$default$2;

    invoke-direct {v1, p0, v2, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 6
    iput-object v1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->c:Lkotlin/Lazy;

    .line 7
    sget-object v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$b;->a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$b;

    .line 8
    new-instance v3, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$special$$inlined$inject$default$3;

    invoke-direct {v3, p0, v2, v1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$special$$inlined$inject$default$3;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->d:Lkotlin/Lazy;

    .line 10
    new-instance v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$j;

    invoke-direct {v0, p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$j;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->e:Lkotlin/Lazy;

    .line 11
    sget-object v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$c;->a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$c;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->f:Lkotlin/Lazy;

    .line 12
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/p;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/group_manager/p;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026vatar(it)\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->i:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic A0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)Lf4/s;
    .locals 0

    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/s;

    return-object p0
.end method

.method public static final synthetic B0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)Lcom/im/freechat/ui/contacts/ContactListFragment;
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->I0()Lcom/im/freechat/ui/contacts/ContactListFragment;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic C0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Lcom/im/freechat/shared/entities/chat/ChatMember;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->h1(Lcom/im/freechat/shared/entities/chat/ChatMember;)V

    return-void
.end method

.method private final D0(Lcom/im/freechat/shared/entities/chat/Chat;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->j:Lf4/y1;

    iget-object v0, v0, Lf4/y1;->d:Landroid/widget/EditText;

    .line 2
    iget-boolean v1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->h:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->j:Lf4/y1;

    iget-object v0, v0, Lf4/y1;->e:Landroid/widget/ImageView;

    const-string v1, "binding.llHeader.ivAvatar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/im/freechat/extend/m;->o(Landroid/widget/ImageView;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->p:Lf4/a2;

    .line 7
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    iget-object v1, v0, Lf4/a2;->c:Landroid/widget/ImageView;

    const-string v3, "ivToolbarAvatar"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/im/freechat/extend/m;->o(Landroid/widget/ImageView;Ljava/lang/Object;)V

    .line 9
    iget-object v1, v0, Lf4/a2;->c:Landroid/widget/ImageView;

    new-instance v3, Lcom/im/freechat/ui/chat/group_manager/j;

    invoke-direct {v3, p0}, Lcom/im/freechat/ui/chat/group_manager/j;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    :cond_2
    iget-object v1, v0, Lf4/a2;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, v0, Lf4/a2;->f:Landroid/widget/TextView;

    const-string v1, "tvToolbarAvatar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/im/freechat/utils/v;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->p:Lf4/a2;

    iget-object v0, v0, Lf4/a2;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->k:Landroid/widget/LinearLayout;

    const-string v1, "binding.llShareLink"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->Z()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat;->getInvitationLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    .line 14
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat;->getAvatar()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->g:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method private static final E0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final G0()Lcom/im/freechat/ui/chat/group_manager/c;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/chat/group_manager/c;

    return-object v0
.end method

.method private final H0()Lcom/im/freechat/ui/create/choosemember/b;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/create/choosemember/b;

    return-object v0
.end method

.method private final I0()Lcom/im/freechat/ui/contacts/ContactListFragment;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/contacts/ContactListFragment;

    return-object v0
.end method

.method private final J0()Lk4/a;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk4/a;

    return-object v0
.end method

.method private static final L0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->e:Landroid/widget/FrameLayout;

    const-string v1, "binding.flLoading"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method private static final M0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/lang/Boolean;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->j:Lf4/y1;

    iget-object v0, v0, Lf4/y1;->b:Landroid/widget/ProgressBar;

    const-string v1, "binding.llHeader.avatarLoading"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/s;

    iget-object p0, p0, Lf4/s;->p:Lf4/a2;

    iget-object p0, p0, Lf4/a2;->d:Landroid/widget/ProgressBar;

    const-string v0, "binding.toolbar.ivToolbarAvatarLoading"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 4
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final N0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->J0()Lk4/a;

    move-result-object p0

    sget-object v0, Lcom/im/freechat/ui/chat/history/HistoryTab;->Media:Lcom/im/freechat/ui/chat/history/HistoryTab;

    invoke-virtual {p0, v0}, Lk4/a;->d(Lcom/im/freechat/ui/chat/history/HistoryTab;)Lcom/im/freechat/ui/chat/history/HistoryTabFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->y0(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static final O0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->J0()Lk4/a;

    move-result-object p0

    sget-object v0, Lcom/im/freechat/ui/chat/history/HistoryTab;->Links:Lcom/im/freechat/ui/chat/history/HistoryTab;

    invoke-virtual {p0, v0}, Lk4/a;->d(Lcom/im/freechat/ui/chat/history/HistoryTab;)Lcom/im/freechat/ui/chat/history/HistoryTabFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->y0(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static final P0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->J0()Lk4/a;

    move-result-object p0

    sget-object v0, Lcom/im/freechat/ui/chat/history/HistoryTab;->Files:Lcom/im/freechat/ui/chat/history/HistoryTab;

    invoke-virtual {p0, v0}, Lk4/a;->d(Lcom/im/freechat/ui/chat/history/HistoryTab;)Lcom/im/freechat/ui/chat/history/HistoryTabFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->y0(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static final Q0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->G0()Lcom/im/freechat/ui/chat/group_manager/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method private static final R0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Lcom/im/freechat/shared/entities/chat/Chat;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->D0(Lcom/im/freechat/shared/entities/chat/Chat;)V

    return-void
.end method

.method private final S0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->p:Lf4/a2;

    invoke-virtual {v0}, Lf4/a2;->b()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const-string v1, "binding.toolbar.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/f;->i0(Landroidx/appcompat/widget/Toolbar;)V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->G0()Lcom/im/freechat/ui/chat/group_manager/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->G0()Lcom/im/freechat/ui/chat/group_manager/c;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$e;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$e;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1}, Lcom/im/freechat/ui/chat/group_manager/c;->i(Lkotlin/jvm/functions/Function1;)V

    .line 7
    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$f;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$f;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1}, Lcom/im/freechat/ui/chat/group_manager/c;->h(Lkotlin/jvm/functions/Function1;)V

    .line 8
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->H0()Lcom/im/freechat/ui/create/choosemember/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    .line 13
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 14
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->g:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/n;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/group_manager/n;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->k:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/m;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/group_manager/m;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->H0()Lcom/im/freechat/ui/create/choosemember/b;

    move-result-object v0

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$g;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$g;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1}, Lcom/im/freechat/ui/create/choosemember/b;->r(Lkotlin/jvm/functions/Function1;)V

    .line 17
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->H0()Lcom/im/freechat/ui/create/choosemember/b;

    move-result-object v0

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$h;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$h;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1}, Lcom/im/freechat/ui/create/choosemember/b;->s(Lkotlin/jvm/functions/Function2;)V

    .line 18
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/k;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/group_manager/k;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->I0()Lcom/im/freechat/ui/contacts/ContactListFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 22
    sget v1, Lb4/b$j;->Qc:I

    .line 23
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->I0()Lcom/im/freechat/ui/contacts/ContactListFragment;

    move-result-object v3

    .line 24
    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->j:Lf4/y1;

    iget-object v0, v0, Lf4/y1;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/l;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/group_manager/l;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->m:Landroidx/viewpager2/widget/ViewPager2;

    .line 28
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->J0()Lk4/a;

    move-result-object v1

    invoke-virtual {v1}, Lk4/a;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 29
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->J0()Lk4/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 30
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setSaveEnabled(Z)V

    .line 32
    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lf4/s;

    iget-object v1, v1, Lf4/s;->o:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lf4/s;

    iget-object v2, v2, Lf4/s;->m:Landroidx/viewpager2/widget/ViewPager2;

    .line 33
    new-instance v3, Lcom/im/freechat/ui/chat/group_manager/i;

    invoke-direct {v3, p0}, Lcom/im/freechat/ui/chat/group_manager/i;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    .line 34
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 35
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 36
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->o:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$d;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$d;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 37
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->j:Lf4/y1;

    iget-object v0, v0, Lf4/y1;->d:Landroid/widget/EditText;

    .line 38
    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/o;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/group_manager/o;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const-string v1, ""

    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$i;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$i;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private static final T0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->c1()V

    return-void
.end method

.method private static final U0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->d1()V

    return-void
.end method

.method private static final V0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->H0()Lcom/im/freechat/ui/create/choosemember/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/create/choosemember/b;->l()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/im/freechat/shared/entities/contact/UserModel;

    .line 6
    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->F(Ljava/util/List;)V

    .line 8
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->b1()V

    return-void
.end method

.method private static final W0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->i:Landroidx/activity/result/ActivityResultLauncher;

    const-string p1, "image/*"

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private static final X0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->J0()Lk4/a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lk4/a;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method private static final Y0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x6

    if-eq p2, v1, :cond_1

    :cond_0
    const/4 p3, 0x0

    goto :goto_3

    :cond_1
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p2

    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    :cond_5
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->m0(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->g1(Z)V

    :goto_3
    return p3
.end method

.method private final c1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->i:Landroid/widget/LinearLayout;

    const-string v1, "binding.llGroupManagementBtns"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->c:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "binding.candidatesList"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "binding.historyTabs"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->n:Landroid/widget/FrameLayout;

    const-string v1, "binding.rootLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final d1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/chat/Chat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/chat/Chat;->getInvitationLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lcom/im/freechat/extend/m;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/im/freechat/base/a$b$a;

    sget v1, Lb4/b$s;->K1:I

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/im/freechat/base/a$b$a;-><init>(I[Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/f;->j0(Lcom/im/freechat/base/a$b;)V

    :cond_0
    return-void
.end method

.method private static final e1(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->l0(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private final g1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->h:Z

    .line 2
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->j1()V

    return-void
.end method

.method private final h1(Lcom/im/freechat/shared/entities/chat/ChatMember;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/UserModel;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v1

    .line 4
    sget v2, Lb4/b$s;->l2:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->Y()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getRole()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v2

    sget-object v3, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$a;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->P()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v2

    sget-object v3, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->OWNER:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    if-ne v2, v3, :cond_5

    .line 8
    sget v2, Lb4/b$s;->H1:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->P()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v2

    sget-object v3, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->OWNER:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    if-ne v2, v3, :cond_3

    .line 10
    sget v2, Lb4/b$s;->y1:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getStatus()Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    move-result-object v2

    sget-object v3, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->NORMAL:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    if-ne v2, v3, :cond_4

    .line 12
    sget v2, Lb4/b$s;->x1:I

    goto :goto_0

    .line 13
    :cond_4
    sget v2, Lb4/b$s;->G1:I

    .line 14
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget v2, Lb4/b$s;->I1:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_5
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 18
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Ljava/lang/CharSequence;

    .line 19
    new-instance v4, Lcom/im/freechat/ui/chat/group_manager/d;

    invoke-direct {v4, v0, p0, v1, p1}, Lcom/im/freechat/ui/chat/group_manager/d;-><init>(Ljava/util/ArrayList;Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Lcom/im/freechat/shared/entities/contact/UserModel;Lcom/im/freechat/shared/entities/chat/ChatMember;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static final i1(Ljava/util/ArrayList;Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Lcom/im/freechat/shared/entities/contact/UserModel;Lcom/im/freechat/shared/entities/chat/ChatMember;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p4, "$items"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "this$0"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$contact"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$member"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2
    sget p4, Lb4/b$s;->w1:I

    invoke-virtual {p1, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p0

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->L(I)V

    goto/16 :goto_0

    .line 3
    :cond_0
    sget p4, Lb4/b$s;->d0:I

    invoke-virtual {p1, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p0

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->H(I)V

    goto/16 :goto_0

    .line 4
    :cond_1
    sget p4, Lb4/b$s;->p2:I

    invoke-virtual {p1, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p0

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->k0(I)V

    goto/16 :goto_0

    .line 5
    :cond_2
    sget p4, Lb4/b$s;->n2:I

    invoke-virtual {p1, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p0

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->j0(I)V

    goto/16 :goto_0

    .line 6
    :cond_3
    sget p2, Lb4/b$s;->y1:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p0

    .line 7
    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->W(I)V

    goto/16 :goto_0

    .line 9
    :cond_4
    sget p2, Lb4/b$s;->H1:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p0

    .line 10
    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->d0(I)V

    goto :goto_0

    .line 12
    :cond_5
    sget p2, Lb4/b$s;->I1:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p0

    .line 13
    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->e0(I)V

    goto :goto_0

    .line 15
    :cond_6
    sget p2, Lb4/b$s;->x1:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p0

    .line 16
    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->G(I)V

    goto :goto_0

    .line 18
    :cond_7
    sget p2, Lb4/b$s;->G1:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p0

    .line 19
    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->i0(I)V

    goto :goto_0

    .line 21
    :cond_8
    sget p2, Lb4/b$s;->l2:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p0

    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->J(I)V

    :cond_9
    :goto_0
    return-void
.end method

.method private final j1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->j:Lf4/y1;

    iget-object v0, v0, Lf4/y1;->c:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHeader.convNameLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->h:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->h:Landroid/widget/FrameLayout;

    const-string v1, "binding.llAddMemberParent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->h:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 4
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->p:Lf4/a2;

    iget-object v0, v0, Lf4/a2;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.toolbar.toolbarContent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->h:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    .line 6
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public static synthetic k0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->Y0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->L0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic m0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->V0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->W0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->M0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic p0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->U0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->O0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic r0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->P0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic s0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->e1(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic t0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->E0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    return-void
.end method

.method public static synthetic u0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->Q0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic v0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->T0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Lcom/im/freechat/shared/entities/chat/Chat;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->R0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Lcom/im/freechat/shared/entities/chat/Chat;)V

    return-void
.end method

.method public static synthetic x0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->X0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public static synthetic y0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->N0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic z0(Ljava/util/ArrayList;Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Lcom/im/freechat/shared/entities/contact/UserModel;Lcom/im/freechat/shared/entities/chat/ChatMember;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->i1(Ljava/util/ArrayList;Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Lcom/im/freechat/shared/entities/contact/UserModel;Lcom/im/freechat/shared/entities/chat/ChatMember;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final F0(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->CHAT_SELECTOR:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    invoke-virtual {p0, v0, p1}, Lcom/im/freechat/base/f;->c0(Ljava/lang/Enum;Landroid/os/Bundle;)V

    return-void
.end method

.method public K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    return-object v0
.end method

.method public bridge synthetic Y()Lcom/im/freechat/base/a;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    return-object v0
.end method

.method protected Z()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->S0()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "chatId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->X(I)V

    .line 4
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->S()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/chat/group_manager/r;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/group_manager/r;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 5
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/chat/group_manager/s;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/group_manager/s;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 6
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->T()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/im/freechat/ui/chat/group_manager/h;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/group_manager/h;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 9
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->R()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 11
    new-instance v2, Lcom/im/freechat/ui/chat/group_manager/e;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/group_manager/e;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 12
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->Q()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 14
    new-instance v2, Lcom/im/freechat/ui/chat/group_manager/f;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/group_manager/f;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 15
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->U()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/chat/group_manager/g;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/group_manager/g;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 16
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/chat/group_manager/q;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/group_manager/q;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public Z0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    .line 3
    sget v0, Lb4/b$j;->s0:I

    .line 4
    invoke-virtual {p1, v0, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    .line 6
    sget v0, Lb4/b$j;->t0:I

    .line 7
    invoke-virtual {p1, v0, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public bridge synthetic a0(Ljava/lang/Enum;Landroid/os/Bundle;)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->Z0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a1(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->CHAT_DETAILS:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "chatId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/im/freechat/base/a;->e(Ljava/lang/Enum;Landroid/os/Bundle;)V

    return-void
.end method

.method public final b1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->i:Landroid/widget/LinearLayout;

    const-string v1, "binding.llGroupManagementBtns"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->c:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "binding.candidatesList"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->H0()Lcom/im/freechat/ui/create/choosemember/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/create/choosemember/b;->q()V

    .line 6
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->n:Landroid/widget/FrameLayout;

    const-string v3, "binding.rootLayout"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "binding.historyTabs"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public f1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/s;
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

    invoke-static {p1, p2, v0}, Lf4/s;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/s;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic g0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->f1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/s;

    move-result-object p1

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1    # Landroid/view/Menu;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lb4/b$n;->e:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    sget p2, Lb4/b$j;->T4:I

    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->h:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, p2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3
    sget p2, Lb4/b$j;->Ga:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p2

    sget v0, Lb4/b$j;->Y0:I

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->Y()Z

    move-result v3

    invoke-interface {p2, v0, v3}, Landroid/view/SubMenu;->setGroupVisible(IZ)V

    .line 4
    sget p2, Lb4/b$j;->p0:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->Y()Z

    move-result v0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5
    sget p2, Lb4/b$j;->G0:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    .line 6
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_1
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 8
    sget p2, Lb4/b$j;->H0:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    .line 9
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->Y()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->Z()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 10
    :goto_2
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 11
    sget p2, Lb4/b$j;->u0:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    .line 12
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->Y()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->V()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 13
    :goto_3
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 14
    sget p2, Lb4/b$j;->I0:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->Y()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->V()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 16
    :goto_4
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/s;

    iget-object v0, v0, Lf4/s;->m:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2
    invoke-super {p0}, Lcom/im/freechat/base/f;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2
    sget v1, Lb4/b$j;->p0:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean p1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->h:Z

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->g1(Z)V

    goto/16 :goto_1

    .line 3
    :cond_0
    sget v1, Lb4/b$j;->w0:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->a0()V

    goto :goto_1

    :cond_1
    const v1, 0x102002c

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 4
    iget-boolean p1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->h:Z

    if-eqz p1, :cond_2

    .line 5
    invoke-direct {p0, v3}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->g1(Z)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lf4/s;

    iget-object p1, p1, Lf4/s;->c:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "binding.candidatesList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->b1()V

    goto :goto_1

    :cond_4
    return v3

    .line 9
    :cond_5
    sget v1, Lb4/b$j;->H0:I

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->g0(Z)V

    goto :goto_1

    .line 10
    :cond_6
    sget v1, Lb4/b$j;->G0:I

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->g0(Z)V

    goto :goto_1

    .line 11
    :cond_7
    sget v1, Lb4/b$j;->I0:I

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->h0(Z)V

    goto :goto_1

    .line 12
    :cond_8
    sget v1, Lb4/b$j;->u0:I

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->h0(Z)V

    :goto_1
    return v2

    .line 13
    :cond_9
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->g1(Z)V

    return-void
.end method

.method public x(Lcom/im/freechat/shared/entities/contact/UserModel;)V
    .locals 2
    .param p1    # Lcom/im/freechat/shared/entities/contact/UserModel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "contact"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->K0()Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->I(Lcom/im/freechat/shared/entities/contact/UserModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lb4/b$s;->Y2:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->H0()Lcom/im/freechat/ui/create/choosemember/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/im/freechat/ui/create/choosemember/b;->j(Lcom/im/freechat/shared/entities/contact/UserModel;)V

    :goto_0
    return-void
.end method
