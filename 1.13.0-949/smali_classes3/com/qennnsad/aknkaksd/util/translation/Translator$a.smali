.class public final Lcom/qennnsad/aknkaksd/util/translation/Translator$a;
.super Ljava/lang/Object;
.source "Translator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/util/translation/Translator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001f\u0010\u0008\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u001f\u0010\u000b\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0005\u001a\u0004\u0008\n\u0010\u0007R\u0017\u0010\u000c\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0005\u001a\u0004\u0008\u0004\u0010\u0007R\u0017\u0010\u000e\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0005\u001a\u0004\u0008\t\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/translation/Translator$a;",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "b",
        "Ljava/lang/String;",
        "d",
        "()Ljava/lang/String;",
        "LANG_JPN",
        "c",
        "a",
        "LANG_CHN",
        "LANG_CHN_SIMPLIFIED",
        "e",
        "LANG_CHN_TRADITIONAL",
        "<init>",
        "()V",
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
.field static final synthetic a:Lcom/qennnsad/aknkaksd/util/translation/Translator$a;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final e:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$a;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/util/translation/Translator$a;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$a;->a:Lcom/qennnsad/aknkaksd/util/translation/Translator$a;

    .line 1
    sget-object v0, Lcom/hbb20/CountryCodePicker$Language;->JAPANESE:Lcom/hbb20/CountryCodePicker$Language;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker$Language;->getCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$a;->b:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/hbb20/CountryCodePicker$Language;->CHINESE_SIMPLIFIED:Lcom/hbb20/CountryCodePicker$Language;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker$Language;->getCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$a;->c:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-CN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/qennnsad/aknkaksd/util/translation/Translator$a;->d:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-TW"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$a;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/util/translation/Translator$a;->b:Ljava/lang/String;

    return-object v0
.end method
