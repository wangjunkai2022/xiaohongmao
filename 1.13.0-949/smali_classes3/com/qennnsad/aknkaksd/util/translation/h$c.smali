.class final Lcom/qennnsad/aknkaksd/util/translation/h$c;
.super Lkotlin/jvm/internal/Lambda;
.source "TranslatorRapid.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/translation/h;->a(Ljava/lang/String;Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "detectedLan",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/util/translation/h;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/translation/h;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/util/translation/h;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/translation/h$c;->a:Lcom/qennnsad/aknkaksd/util/translation/h;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/translation/h$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/translation/h$c;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/qennnsad/aknkaksd/util/translation/h$c;->d:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/qennnsad/aknkaksd/util/translation/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/util/translation/h$c;->b(Lcom/qennnsad/aknkaksd/util/translation/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final b(Lcom/qennnsad/aknkaksd/util/translation/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$origText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/util/translation/h;->f(Lcom/qennnsad/aknkaksd/util/translation/h;)Lcom/qennnsad/aknkaksd/util/translation/d;

    move-result-object v1

    new-instance v5, Lcom/qennnsad/aknkaksd/util/translation/h$c$a;

    invoke-direct {v5, p0, p4}, Lcom/qennnsad/aknkaksd/util/translation/h$c$a;-><init>(Lcom/qennnsad/aknkaksd/util/translation/h;Lkotlin/jvm/functions/Function1;)V

    new-instance v6, Lcom/qennnsad/aknkaksd/util/translation/h$c$b;

    invoke-direct {v6, p0, p3, p4}, Lcom/qennnsad/aknkaksd/util/translation/h$c$b;-><init>(Lcom/qennnsad/aknkaksd/util/translation/h;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/translation/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/translation/h$c;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/h$c;->a:Lcom/qennnsad/aknkaksd/util/translation/h;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/translation/h;->e(Lcom/qennnsad/aknkaksd/util/translation/h;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source Lang: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/h$c;->a:Lcom/qennnsad/aknkaksd/util/translation/h;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/translation/h;->e(Lcom/qennnsad/aknkaksd/util/translation/h;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target Lang: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/translation/h$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/h$c;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/h$c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 6
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/translation/h$c;->a:Lcom/qennnsad/aknkaksd/util/translation/h;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/translation/h$c;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/util/translation/h$c;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/qennnsad/aknkaksd/util/translation/h$c;->c:Lkotlin/jvm/functions/Function1;

    new-instance v7, Lcom/qennnsad/aknkaksd/util/translation/i;

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/translation/i;-><init>(Lcom/qennnsad/aknkaksd/util/translation/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 7
    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/translation/h$c;->a:Lcom/qennnsad/aknkaksd/util/translation/h;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/translation/h;->e(Lcom/qennnsad/aknkaksd/util/translation/h;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "=== Language is the SAME. RETURNING ORIGINAL TEXT ==="

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/translation/h$c;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/h$c;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
