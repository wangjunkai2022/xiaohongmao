.class public final Lcom/qennnsad/aknkaksd/util/j1$e;
.super Ljava/lang/Object;
.source "Spans.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/util/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/util/j1$e$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u000bB!\u0008\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H\u0002J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u000e\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/j1$e;",
        "",
        "",
        "e",
        "Landroid/text/SpannableStringBuilder;",
        "buffer",
        "",
        "b",
        "string",
        "d",
        "c",
        "a",
        "Ljava/lang/CharSequence;",
        "mSource",
        "mReplacement",
        "Ljava/util/regex/Matcher;",
        "Ljava/util/regex/Matcher;",
        "mMatcher",
        "",
        "I",
        "mAppendPosition",
        "",
        "Z",
        "mIsSpannable",
        "matcher",
        "<init>",
        "(Ljava/lang/CharSequence;Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V",
        "f",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final f:Lcom/qennnsad/aknkaksd/util/j1$e$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/CharSequence;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/lang/CharSequence;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Ljava/util/regex/Matcher;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private d:I

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/util/j1$e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/util/j1$e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/j1$e;->f:Lcom/qennnsad/aknkaksd/util/j1$e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/j1$e;->a:Ljava/lang/CharSequence;

    .line 3
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/j1$e;->b:Ljava/lang/CharSequence;

    .line 4
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/j1$e;->c:Ljava/util/regex/Matcher;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/qennnsad/aknkaksd/util/j1$e;->d:I

    .line 6
    instance-of p1, p3, Landroid/text/Spannable;

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/util/j1$e;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Ljava/util/regex/Matcher;Ljava/lang/CharSequence;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/util/j1$e;-><init>(Ljava/lang/CharSequence;Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic a(Lcom/qennnsad/aknkaksd/util/j1$e;)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/j1$e;->e()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private final b(Landroid/text/SpannableStringBuilder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/j1$e;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/qennnsad/aknkaksd/util/j1$e;->d:I

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/j1$e;->c:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/j1$e;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/j1$e;->b:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/util/j1$e;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/j1$e;->b:Ljava/lang/CharSequence;

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/j1$e;->c:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/j1$e;->d:I

    return-void
.end method

.method private final d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "obtain()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "{\n                TextUt\u2026cel(parcel)\n            }"

    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method private final e()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/j1$e;->c:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/util/j1$e;->b(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/util/j1$e;->c(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 3
    .param p1    # Landroid/text/SpannableStringBuilder;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/j1$e;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/qennnsad/aknkaksd/util/j1$e;->d:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p1
.end method
