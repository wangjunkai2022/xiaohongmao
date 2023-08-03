.class public final synthetic Lcom/google/mlkit/nl/languageid/internal/e;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/google/mlkit/nl/languageid/internal/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/nl/languageid/internal/e;

    invoke-direct {v0}, Lcom/google/mlkit/nl/languageid/internal/e;-><init>()V

    sput-object v0, Lcom/google/mlkit/nl/languageid/internal/e;->a:Lcom/google/mlkit/nl/languageid/internal/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/mlkit/nl/languageid/internal/a;

    check-cast p2, Lcom/google/mlkit/nl/languageid/internal/a;

    invoke-interface {p2}, Lcom/google/mlkit/nl/languageid/internal/a;->getPriority()I

    move-result p2

    invoke-interface {p1}, Lcom/google/mlkit/nl/languageid/internal/a;->getPriority()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
