.class public final Lcom/im/freechat/ui/chat/group_manager/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GroupManagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/chat/group_manager/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/chat/group_manager/c$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGroupManagerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupManagerAdapter.kt\ncom/im/freechat/ui/chat/group_manager/GroupManagerAdapter$GroupManagerHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,87:1\n254#2,2:88\n254#2,2:90\n*S KotlinDebug\n*F\n+ 1 GroupManagerAdapter.kt\ncom/im/freechat/ui/chat/group_manager/GroupManagerAdapter$GroupManagerHolder\n*L\n29#1:88,2\n32#1:90,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/group_manager/c$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/im/freechat/shared/entities/chat/ChatMember;",
        "member",
        "",
        "d",
        "Lf4/h1;",
        "binding",
        "<init>",
        "(Lcom/im/freechat/ui/chat/group_manager/c;Lf4/h1;)V",
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
.field private final a:Lf4/h1;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final synthetic b:Lcom/im/freechat/ui/chat/group_manager/c;


# direct methods
.method public constructor <init>(Lcom/im/freechat/ui/chat/group_manager/c;Lf4/h1;)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/chat/group_manager/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf4/h1;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/im/freechat/ui/chat/group_manager/c$a;->b:Lcom/im/freechat/ui/chat/group_manager/c;

    .line 2
    invoke-virtual {p2}, Lf4/h1;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/im/freechat/ui/chat/group_manager/c$a;->a:Lf4/h1;

    return-void
.end method

.method public static synthetic b(Lcom/im/freechat/ui/chat/group_manager/c;Lcom/im/freechat/shared/entities/chat/ChatMember;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/group_manager/c$a;->f(Lcom/im/freechat/ui/chat/group_manager/c;Lcom/im/freechat/shared/entities/chat/ChatMember;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/im/freechat/ui/chat/group_manager/c;Lcom/im/freechat/shared/entities/chat/ChatMember;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/group_manager/c$a;->e(Lcom/im/freechat/ui/chat/group_manager/c;Lcom/im/freechat/shared/entities/chat/ChatMember;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static final e(Lcom/im/freechat/ui/chat/group_manager/c;Lcom/im/freechat/shared/entities/chat/ChatMember;Landroid/view/View;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$member"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/c;->e()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final f(Lcom/im/freechat/ui/chat/group_manager/c;Lcom/im/freechat/shared/entities/chat/ChatMember;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$member"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/c;->d()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final d(Lcom/im/freechat/shared/entities/chat/ChatMember;)V
    .locals 13
    .param p1    # Lcom/im/freechat/shared/entities/chat/ChatMember;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "member"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/im/freechat/ui/chat/group_manager/c$a;->a:Lf4/h1;

    iget-object v1, v1, Lf4/h1;->f:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/im/freechat/extend/r;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 5
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v1

    const-string v2, "binding.ivIcon"

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/im/freechat/ui/chat/group_manager/c$a;->a:Lf4/h1;

    iget-object v1, v1, Lf4/h1;->d:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/im/freechat/ui/chat/group_manager/c$a;->a:Lf4/h1;

    iget-object v1, v1, Lf4/h1;->d:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/im/freechat/extend/m;->o(Landroid/widget/ImageView;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/im/freechat/ui/chat/group_manager/c$a;->a:Lf4/h1;

    iget-object v1, v1, Lf4/h1;->d:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/im/freechat/ui/chat/group_manager/c$a;->a:Lf4/h1;

    iget-object v1, v1, Lf4/h1;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/c$a;->a:Lf4/h1;

    iget-object v5, v0, Lf4/h1;->g:Landroid/widget/TextView;

    const-string v0, "binding.tvMemberName"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getManagementRole()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v0

    invoke-static {v0}, Lcom/im/freechat/extend/m;->m(Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x16

    const/4 v12, 0x0

    .line 14
    invoke-static/range {v5 .. v12}, Lcom/im/freechat/utils/v;->d(Landroid/widget/TextView;Ljava/lang/Integer;ZZZZILjava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/c$a;->a:Lf4/h1;

    iget-object v0, v0, Lf4/h1;->e:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getStatus()Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    move-result-object v1

    sget-object v2, Lcom/im/freechat/ui/chat/group_manager/c$a$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-ne v1, v4, :cond_1

    .line 17
    sget v3, Lb4/b$h;->b4:I

    .line 18
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/c$a;->a:Lf4/h1;

    iget-object v0, v0, Lf4/h1;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getRole()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v1

    sget-object v2, Lcom/im/freechat/ui/chat/group_manager/c$a$a;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v4, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 20
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lb4/b$s;->F1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 21
    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lb4/b$s;->A1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v1, ""

    .line 22
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/group_manager/c$a;->b:Lcom/im/freechat/ui/chat/group_manager/c;

    new-instance v2, Lcom/im/freechat/ui/chat/group_manager/b;

    invoke-direct {v2, v1, p1}, Lcom/im/freechat/ui/chat/group_manager/b;-><init>(Lcom/im/freechat/ui/chat/group_manager/c;Lcom/im/freechat/shared/entities/chat/ChatMember;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/group_manager/c$a;->b:Lcom/im/freechat/ui/chat/group_manager/c;

    new-instance v2, Lcom/im/freechat/ui/chat/group_manager/a;

    invoke-direct {v2, v1, p1}, Lcom/im/freechat/ui/chat/group_manager/a;-><init>(Lcom/im/freechat/ui/chat/group_manager/c;Lcom/im/freechat/shared/entities/chat/ChatMember;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
