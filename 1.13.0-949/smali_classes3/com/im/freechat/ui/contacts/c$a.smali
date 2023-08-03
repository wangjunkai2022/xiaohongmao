.class public final Lcom/im/freechat/ui/contacts/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContactListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/contacts/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactListAdapter.kt\ncom/im/freechat/ui/contacts/ContactListAdapter$ContactHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,108:1\n254#2,2:109\n254#2,2:111\n254#2,2:113\n254#2,2:115\n254#2,2:117\n*S KotlinDebug\n*F\n+ 1 ContactListAdapter.kt\ncom/im/freechat/ui/contacts/ContactListAdapter$ContactHolder\n*L\n52#1:109,2\n62#1:111,2\n65#1:113,2\n68#1:115,2\n69#1:117,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004R0\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/im/freechat/ui/contacts/c$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "contact",
        "",
        "removeEnabled",
        "",
        "c",
        "Lkotlin/Function1;",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "e",
        "()Lkotlin/jvm/functions/Function1;",
        "f",
        "(Lkotlin/jvm/functions/Function1;)V",
        "removedClickListener",
        "Lf4/c1;",
        "binding",
        "<init>",
        "(Lf4/c1;)V",
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
.field private final a:Lf4/c1;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf4/c1;)V
    .locals 1
    .param p1    # Lf4/c1;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lf4/c1;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/im/freechat/ui/contacts/c$a;->a:Lf4/c1;

    return-void
.end method

.method public static synthetic b(Lcom/im/freechat/ui/contacts/c$a;Lcom/im/freechat/shared/entities/contact/UserModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/contacts/c$a;->d(Lcom/im/freechat/ui/contacts/c$a;Lcom/im/freechat/shared/entities/contact/UserModel;Landroid/view/View;)V

    return-void
.end method

.method private static final d(Lcom/im/freechat/ui/contacts/c$a;Lcom/im/freechat/shared/entities/contact/UserModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$contact"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/contacts/c$a;->b:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final c(Lcom/im/freechat/shared/entities/contact/UserModel;Z)V
    .locals 13
    .param p1    # Lcom/im/freechat/shared/entities/contact/UserModel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "contact"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/contacts/c$a;->a:Lf4/c1;

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->isService()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-string v4, "ivAvatar"

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lf4/c1;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lb4/b$s;->Q8:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "root.context.getString(R.string.service_contact)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v5, v0, Lf4/c1;->i:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v5, v0, Lf4/c1;->g:Landroid/widget/TextView;

    invoke-static {v1}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Lf4/c1;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/im/freechat/extend/r;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 7
    iget-object v1, v0, Lf4/c1;->e:Landroid/widget/ImageView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v5, v0, Lf4/c1;->i:Landroid/widget/TextView;

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, ""

    .line 12
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getManagementRole()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v6

    invoke-static {v6}, Lcom/im/freechat/extend/m;->m(Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x16

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/im/freechat/utils/v;->d(Landroid/widget/TextView;Ljava/lang/Integer;ZZZZILjava/lang/Object;)V

    .line 13
    iget-object v5, v0, Lf4/c1;->g:Landroid/widget/TextView;

    invoke-static {v1}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v5, v0, Lf4/c1;->g:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/im/freechat/extend/r;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 15
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 16
    iget-object v1, v0, Lf4/c1;->e:Landroid/widget/ImageView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v1, v0, Lf4/c1;->e:Landroid/widget/ImageView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/im/freechat/extend/m;->o(Landroid/widget/ImageView;Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, v0, Lf4/c1;->e:Landroid/widget/ImageView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :goto_0
    iget-object v1, v0, Lf4/c1;->h:Landroid/widget/TextView;

    const-string v4, "tvGlobal"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->isGlobalSearch()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    .line 22
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object v1, v0, Lf4/c1;->d:Landroid/widget/ImageButton;

    const-string v4, "btnRemove"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->isService()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    .line 24
    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p2, v0, Lf4/c1;->d:Landroid/widget/ImageButton;

    new-instance v0, Lcom/im/freechat/ui/contacts/b;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/ui/contacts/b;-><init>(Lcom/im/freechat/ui/contacts/c$a;Lcom/im/freechat/shared/entities/contact/UserModel;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final e()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/c$a;->b:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final f(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/contacts/c$a;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method
