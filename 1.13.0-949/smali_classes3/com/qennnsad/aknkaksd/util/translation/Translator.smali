.class public interface abstract Lcom/qennnsad/aknkaksd/util/translation/Translator;
.super Ljava/lang/Object;
.source "Translator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/util/translation/Translator$a;,
        Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000 \t2\u00020\u0001:\u0002\t\nJ.\u0010\t\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/translation/Translator;",
        "",
        "",
        "origText",
        "Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;",
        "direction",
        "Lkotlin/Function1;",
        "",
        "onTranslationComplete",
        "a",
        "Direction",
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
.field public static final a:Lcom/qennnsad/aknkaksd/util/translation/Translator$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$a;->a:Lcom/qennnsad/aknkaksd/util/translation/Translator$a;

    sput-object v0, Lcom/qennnsad/aknkaksd/util/translation/Translator;->a:Lcom/qennnsad/aknkaksd/util/translation/Translator$a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;Lkotlin/jvm/functions/Function1;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
