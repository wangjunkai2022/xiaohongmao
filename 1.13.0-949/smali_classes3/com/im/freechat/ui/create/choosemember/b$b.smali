.class public final Lcom/im/freechat/ui/create/choosemember/b$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChooseMemberAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/create/choosemember/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChooseMemberAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChooseMemberAdapter.kt\ncom/im/freechat/ui/create/choosemember/ChooseMemberAdapter$EditViewHolder\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,141:1\n65#2,16:142\n93#2,3:158\n*S KotlinDebug\n*F\n+ 1 ChooseMemberAdapter.kt\ncom/im/freechat/ui/create/choosemember/ChooseMemberAdapter$EditViewHolder\n*L\n62#1:142,16\n62#1:158,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0003\u001a\u00020\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/im/freechat/ui/create/choosemember/b$b;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "",
        "c",
        "Lf4/e1;",
        "binding",
        "<init>",
        "(Lcom/im/freechat/ui/create/choosemember/b;Lf4/e1;)V",
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
.field private final a:Lf4/e1;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final synthetic b:Lcom/im/freechat/ui/create/choosemember/b;


# direct methods
.method public constructor <init>(Lcom/im/freechat/ui/create/choosemember/b;Lf4/e1;)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/create/choosemember/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf4/e1;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/create/choosemember/b$b;->b:Lcom/im/freechat/ui/create/choosemember/b;

    invoke-virtual {p2}, Lf4/e1;->b()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/im/freechat/ui/create/choosemember/b$b;->a:Lf4/e1;

    return-void
.end method

.method public static synthetic b(Landroid/widget/EditText;Lcom/im/freechat/ui/create/choosemember/b;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/im/freechat/ui/create/choosemember/b$b;->d(Landroid/widget/EditText;Lcom/im/freechat/ui/create/choosemember/b;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private static final d(Landroid/widget/EditText;Lcom/im/freechat/ui/create/choosemember/b;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x43

    if-ne p3, v2, :cond_0

    .line 1
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    const-string p3, "this.text"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    const-string p0, "null cannot be cast to non-null type android.widget.EditText"

    .line 3
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/EditText;

    invoke-static {p1, p2}, Lcom/im/freechat/ui/create/choosemember/b;->h(Lcom/im/freechat/ui/create/choosemember/b;Landroid/widget/EditText;)V

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/create/choosemember/b$b;->a:Lf4/e1;

    iget-object v0, v0, Lf4/e1;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/im/freechat/ui/create/choosemember/b$b;->b:Lcom/im/freechat/ui/create/choosemember/b;

    .line 2
    invoke-static {v1}, Lcom/im/freechat/ui/create/choosemember/b;->f(Lcom/im/freechat/ui/create/choosemember/b;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 3
    invoke-static {v1}, Lcom/im/freechat/ui/create/choosemember/b;->g(Lcom/im/freechat/ui/create/choosemember/b;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 4
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcom/im/freechat/ui/create/choosemember/b$b$a;

    invoke-direct {v2, v1, v0}, Lcom/im/freechat/ui/create/choosemember/b$b$a;-><init>(Lcom/im/freechat/ui/create/choosemember/b;Landroid/widget/EditText;)V

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    invoke-static {v1}, Lcom/im/freechat/ui/create/choosemember/b;->g(Lcom/im/freechat/ui/create/choosemember/b;)I

    move-result v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setTag(ILjava/lang/Object;)V

    .line 8
    :cond_0
    new-instance v2, Lcom/im/freechat/ui/create/choosemember/c;

    invoke-direct {v2, v0, v1}, Lcom/im/freechat/ui/create/choosemember/c;-><init>(Landroid/widget/EditText;Lcom/im/freechat/ui/create/choosemember/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 9
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
