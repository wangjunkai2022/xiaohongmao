.class public final Lcom/giphy/sdk/ui/views/GiphySearchBar;
.super Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;
.source "GiphySearchBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/ui/views/GiphySearchBar$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000o\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0004\u0008\u0000\u0018\u0000 S2\u00020\u0001:\u0001TB\'\u0008\u0007\u0012\u0006\u0010J\u001a\u00020I\u0012\n\u0008\u0002\u0010L\u001a\u0004\u0018\u00010K\u0012\u0008\u0008\u0002\u0010M\u001a\u00020\r\u00a2\u0006\u0004\u0008N\u0010OB\u0019\u0008\u0016\u0012\u0006\u0010J\u001a\u00020I\u0012\u0006\u0010Q\u001a\u00020P\u00a2\u0006\u0004\u0008N\u0010RJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0006\u0010\t\u001a\u00020\u0002J\u000e\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rJ\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\rH\u0014J\u0006\u0010\u0013\u001a\u00020\u0002R=\u0010\u001d\u001a\u001d\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR=\u0010 \u001a\u001d\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0018\u001a\u0004\u0008\u001e\u0010\u001a\"\u0004\u0008\u001f\u0010\u001cR\u0018\u0010#\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\"R*\u0010,\u001a\u00020$2\u0006\u0010%\u001a\u00020$8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\"\u00104\u001a\u00020-8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\"\u0010<\u001a\u0002058\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\"\u0010@\u001a\u0002058\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008=\u00107\u001a\u0004\u0008>\u00109\"\u0004\u0008?\u0010;R\"\u0010H\u001a\u00020A8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010G\u00a8\u0006U"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/views/GiphySearchBar;",
        "Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;",
        "",
        "j",
        "com/giphy/sdk/ui/views/GiphySearchBar$c",
        "getTextWatcher",
        "()Lcom/giphy/sdk/ui/views/GiphySearchBar$c;",
        "k",
        "g",
        "h",
        "",
        "text",
        "setText",
        "",
        "resId",
        "l",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "i",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "query",
        "Lkotlin/jvm/functions/Function1;",
        "getOnSearchClickAction",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnSearchClickAction",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onSearchClickAction",
        "getQueryListener",
        "setQueryListener",
        "queryListener",
        "Lkotlinx/coroutines/j2;",
        "Lkotlinx/coroutines/j2;",
        "queryChangedJob",
        "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;",
        "value",
        "m",
        "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;",
        "getKeyboardState",
        "()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;",
        "setKeyboardState",
        "(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;)V",
        "keyboardState",
        "",
        "n",
        "Z",
        "getHideKeyboardOnSearch",
        "()Z",
        "setHideKeyboardOnSearch",
        "(Z)V",
        "hideKeyboardOnSearch",
        "Landroid/widget/ImageView;",
        "o",
        "Landroid/widget/ImageView;",
        "getClearSearchBtn",
        "()Landroid/widget/ImageView;",
        "setClearSearchBtn",
        "(Landroid/widget/ImageView;)V",
        "clearSearchBtn",
        "p",
        "getPerformSearchBtn",
        "setPerformSearchBtn",
        "performSearchBtn",
        "Landroid/widget/EditText;",
        "q",
        "Landroid/widget/EditText;",
        "getSearchInput",
        "()Landroid/widget/EditText;",
        "setSearchInput",
        "(Landroid/widget/EditText;)V",
        "searchInput",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Li2/e;",
        "theme",
        "(Landroid/content/Context;Li2/e;)V",
        "s",
        "a",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final r:I

.field public static final s:Lcom/giphy/sdk/ui/views/GiphySearchBar$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private i:Li2/e;

.field private j:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private k:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private l:Lkotlinx/coroutines/j2;

.field private m:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private n:Z

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/ImageView;

.field public q:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/giphy/sdk/ui/views/GiphySearchBar$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/giphy/sdk/ui/views/GiphySearchBar$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->s:Lcom/giphy/sdk/ui/views/GiphySearchBar$a;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/giphy/sdk/ui/utils/g;->b(I)I

    move-result v0

    sput v0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/giphy/sdk/ui/views/GiphySearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/giphy/sdk/ui/views/GiphySearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget-object p1, Li2/d;->n:Li2/d;

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->i:Li2/e;

    .line 4
    sget-object p1, Lcom/giphy/sdk/ui/views/GiphySearchBar$d;->a:Lcom/giphy/sdk/ui/views/GiphySearchBar$d;

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->j:Lkotlin/jvm/functions/Function1;

    .line 5
    sget-object p1, Lcom/giphy/sdk/ui/views/GiphySearchBar$e;->a:Lcom/giphy/sdk/ui/views/GiphySearchBar$e;

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->k:Lkotlin/jvm/functions/Function1;

    .line 6
    sget-object p1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;->OPEN:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->m:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/giphy/sdk/ui/views/GiphySearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Li2/e;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Li2/e;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "theme"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, p1, v0, v1}, Lcom/giphy/sdk/ui/views/GiphySearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    iput-object p2, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->i:Li2/e;

    .line 9
    sget p2, Lcom/giphy/sdk/ui/p$m;->m0:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    sget p2, Lcom/giphy/sdk/ui/p$j;->I0:I

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.clearSearchBtn)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->o:Landroid/widget/ImageView;

    if-nez p2, :cond_0

    const-string v0, "clearSearchBtn"

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v0, Lcom/giphy/sdk/ui/p$o;->R0:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 12
    sget p2, Lcom/giphy/sdk/ui/p$j;->G4:I

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.performSearchBtn)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->p:Landroid/widget/ImageView;

    if-nez p2, :cond_1

    const-string v0, "performSearchBtn"

    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget v0, Lcom/giphy/sdk/ui/p$o;->m1:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    sget p1, Lcom/giphy/sdk/ui/p$j;->f5:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.searchInput)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->q:Landroid/widget/EditText;

    .line 15
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->k()V

    .line 16
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->j()V

    return-void
.end method

.method public static final synthetic c(Lcom/giphy/sdk/ui/views/GiphySearchBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->g()V

    return-void
.end method

.method public static final synthetic d(Lcom/giphy/sdk/ui/views/GiphySearchBar;)Lkotlinx/coroutines/j2;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->l:Lkotlinx/coroutines/j2;

    return-object p0
.end method

.method public static final synthetic e()I
    .locals 1

    sget v0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->r:I

    return v0
.end method

.method public static final synthetic f(Lcom/giphy/sdk/ui/views/GiphySearchBar;Lkotlinx/coroutines/j2;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->l:Lkotlinx/coroutines/j2;

    return-void
.end method

.method private final g()V
    .locals 1

    new-instance v0, Lcom/giphy/sdk/ui/views/GiphySearchBar$b;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/GiphySearchBar$b;-><init>(Lcom/giphy/sdk/ui/views/GiphySearchBar;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final getTextWatcher()Lcom/giphy/sdk/ui/views/GiphySearchBar$c;
    .locals 1

    new-instance v0, Lcom/giphy/sdk/ui/views/GiphySearchBar$c;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/GiphySearchBar$c;-><init>(Lcom/giphy/sdk/ui/views/GiphySearchBar;)V

    return-object v0
.end method

.method private final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->o:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "clearSearchBtn"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/giphy/sdk/ui/views/GiphySearchBar$h;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphySearchBar$h;-><init>(Lcom/giphy/sdk/ui/views/GiphySearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    const-string v1, "performSearchBtn"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lcom/giphy/sdk/ui/views/GiphySearchBar$i;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphySearchBar$i;-><init>(Lcom/giphy/sdk/ui/views/GiphySearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->q:Landroid/widget/EditText;

    const-string v1, "searchInput"

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->getTextWatcher()Lcom/giphy/sdk/ui/views/GiphySearchBar$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->q:Landroid/widget/EditText;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lcom/giphy/sdk/ui/views/GiphySearchBar$j;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphySearchBar$j;-><init>(Lcom/giphy/sdk/ui/views/GiphySearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->q:Landroid/widget/EditText;

    const-string v1, "searchInput"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->i:Li2/e;

    invoke-virtual {v2}, Li2/e;->k()I

    move-result v2

    const/16 v3, 0xcc

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->q:Landroid/widget/EditText;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->i:Li2/e;

    invoke-virtual {v1}, Li2/e;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->o:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    const-string v1, "clearSearchBtn"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->i:Li2/e;

    invoke-virtual {v1}, Li2/e;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/16 v0, 0xa

    .line 4
    invoke-static {v0}, Lcom/giphy/sdk/ui/utils/g;->b(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;->setCornerRadius(F)V

    .line 5
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->p:Landroid/widget/ImageView;

    const-string v1, "performSearchBtn"

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget v2, Lcom/giphy/sdk/ui/p$h;->M2:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->i:Li2/e;

    invoke-virtual {v0}, Li2/e;->j()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public final getClearSearchBtn()Landroid/widget/ImageView;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->o:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "clearSearchBtn"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getHideKeyboardOnSearch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->n:Z

    return v0
.end method

.method public final getKeyboardState()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->m:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    return-object v0
.end method

.method public final getOnSearchClickAction()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->j:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getPerformSearchBtn()Landroid/widget/ImageView;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "performSearchBtn"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getQueryListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->k:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getSearchInput()Landroid/widget/EditText;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->q:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v1, "searchInput"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final h()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->q:Landroid/widget/EditText;

    if-nez v1, :cond_0

    const-string v2, "searchInput"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    sget-object v0, Lcom/giphy/sdk/ui/views/GiphySearchBar$f;->a:Lcom/giphy/sdk/ui/views/GiphySearchBar$f;

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->k:Lkotlin/jvm/functions/Function1;

    .line 2
    sget-object v0, Lcom/giphy/sdk/ui/views/GiphySearchBar$g;->a:Lcom/giphy/sdk/ui/views/GiphySearchBar$g;

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->j:Lkotlin/jvm/functions/Function1;

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->l:Lkotlinx/coroutines/j2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/j2$a;->b(Lkotlinx/coroutines/j2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->l:Lkotlinx/coroutines/j2;

    return-void
.end method

.method public final l(I)V
    .locals 2

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "performSearchBtn"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/giphy/sdk/ui/p$g;->A2:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void
.end method

.method public final setClearSearchBtn(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->o:Landroid/widget/ImageView;

    return-void
.end method

.method public final setHideKeyboardOnSearch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->n:Z

    return-void
.end method

.method public final setKeyboardState(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->m:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    .line 2
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->g()V

    return-void
.end method

.method public final setOnSearchClickAction(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->j:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setPerformSearchBtn(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->p:Landroid/widget/ImageView;

    return-void
.end method

.method public final setQueryListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->k:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setSearchInput(Landroid/widget/EditText;)V
    .locals 1
    .param p1    # Landroid/widget/EditText;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->q:Landroid/widget/EditText;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->q:Landroid/widget/EditText;

    const-string v1, "searchInput"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->q:Landroid/widget/EditText;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar;->q:Landroid/widget/EditText;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
