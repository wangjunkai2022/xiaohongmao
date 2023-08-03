.class public final Lcom/im/freechat/ui/create/namegroup/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MemberAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/create/namegroup/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMemberAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemberAdapter.kt\ncom/im/freechat/ui/create/namegroup/MemberAdapter$MemberViewHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,64:1\n254#2,2:65\n254#2,2:67\n254#2,2:69\n*S KotlinDebug\n*F\n+ 1 MemberAdapter.kt\ncom/im/freechat/ui/create/namegroup/MemberAdapter$MemberViewHolder\n*L\n43#1:65,2\n46#1:67,2\n52#1:69,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/im/freechat/ui/create/namegroup/a$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "contact",
        "",
        "position",
        "",
        "b",
        "Lf4/h1;",
        "binding",
        "<init>",
        "(Lf4/h1;)V",
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


# direct methods
.method public constructor <init>(Lf4/h1;)V
    .locals 1
    .param p1    # Lf4/h1;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lf4/h1;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/im/freechat/ui/create/namegroup/a$a;->a:Lf4/h1;

    return-void
.end method


# virtual methods
.method public final b(Lcom/im/freechat/shared/entities/contact/UserModel;I)V
    .locals 16
    .param p1    # Lcom/im/freechat/shared/entities/contact/UserModel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string v0, "contact"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lcom/im/freechat/ui/create/namegroup/a$a;->a:Lf4/h1;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v4, v2, Lf4/h1;->f:Landroid/widget/TextView;

    .line 4
    invoke-static {v3}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {v3}, Lcom/im/freechat/extend/r;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v7, "ivIcon"

    if-eqz v4, :cond_0

    .line 7
    iget-object v4, v2, Lf4/h1;->d:Landroid/widget/ImageView;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v4, v2, Lf4/h1;->d:Landroid/widget/ImageView;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/im/freechat/extend/m;->o(Landroid/widget/ImageView;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v4, v2, Lf4/h1;->d:Landroid/widget/ImageView;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :goto_0
    iget-object v8, v2, Lf4/h1;->g:Landroid/widget/TextView;

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, ""

    .line 14
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getManagementRole()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v1

    invoke-static {v1}, Lcom/im/freechat/extend/m;->m(Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v14, 0x16

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lcom/im/freechat/utils/v;->d(Landroid/widget/TextView;Ljava/lang/Integer;ZZZZILjava/lang/Object;)V

    .line 15
    iget-object v1, v2, Lf4/h1;->h:Landroid/widget/TextView;

    const-string v2, "tvRole"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    const/4 v5, 0x0

    .line 16
    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
