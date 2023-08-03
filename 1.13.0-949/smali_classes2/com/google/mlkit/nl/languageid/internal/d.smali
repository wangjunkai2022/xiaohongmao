.class public final synthetic Lcom/google/mlkit/nl/languageid/internal/d;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"

# interfaces
.implements Lcom/google/firebase/components/j;


# static fields
.field public static final synthetic a:Lcom/google/mlkit/nl/languageid/internal/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/nl/languageid/internal/d;

    invoke-direct {v0}, Lcom/google/mlkit/nl/languageid/internal/d;-><init>()V

    sput-object v0, Lcom/google/mlkit/nl/languageid/internal/d;->a:Lcom/google/mlkit/nl/languageid/internal/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/components/g;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;

    const-class v1, Lcom/google/mlkit/nl/languageid/internal/i;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/g;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/nl/languageid/internal/i;

    const-class v2, Lcom/google/mlkit/common/sdkinternal/f;

    .line 2
    invoke-interface {p1, v2}, Lcom/google/firebase/components/g;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/common/sdkinternal/f;

    invoke-direct {v0, v1, p1}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl$a;-><init>(Lcom/google/mlkit/nl/languageid/internal/i;Lcom/google/mlkit/common/sdkinternal/f;)V

    return-object v0
.end method
