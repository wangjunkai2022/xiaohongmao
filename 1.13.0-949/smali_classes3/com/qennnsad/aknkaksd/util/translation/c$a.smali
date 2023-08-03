.class final Lcom/qennnsad/aknkaksd/util/translation/c$a;
.super Lkotlin/jvm/internal/Lambda;
.source "IdentifierGoogle.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/util/translation/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/google/mlkit/nl/languageid/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/google/mlkit/nl/languageid/c;",
        "a",
        "()Lcom/google/mlkit/nl/languageid/c;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/qennnsad/aknkaksd/util/translation/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/util/translation/c$a;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/util/translation/c$a;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/translation/c$a;->a:Lcom/qennnsad/aknkaksd/util/translation/c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/mlkit/nl/languageid/c;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/mlkit/nl/languageid/b$a;

    invoke-direct {v0}, Lcom/google/mlkit/nl/languageid/b$a;-><init>()V

    const/high16 v1, 0x3f400000    # 0.75f

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/mlkit/nl/languageid/b$a;->b(F)Lcom/google/mlkit/nl/languageid/b$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/mlkit/nl/languageid/b$a;->a()Lcom/google/mlkit/nl/languageid/b;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/mlkit/nl/languageid/a;->b(Lcom/google/mlkit/nl/languageid/b;)Lcom/google/mlkit/nl/languageid/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/translation/c$a;->a()Lcom/google/mlkit/nl/languageid/c;

    move-result-object v0

    return-object v0
.end method
