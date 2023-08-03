.class public final synthetic Lcom/google/mlkit/nl/languageid/internal/c;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"

# interfaces
.implements Lcom/google/firebase/components/j;


# static fields
.field public static final synthetic a:Lcom/google/mlkit/nl/languageid/internal/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/nl/languageid/internal/c;

    invoke-direct {v0}, Lcom/google/mlkit/nl/languageid/internal/c;-><init>()V

    sput-object v0, Lcom/google/mlkit/nl/languageid/internal/c;->a:Lcom/google/mlkit/nl/languageid/internal/c;

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
    new-instance v0, Ljava/util/ArrayList;

    const-class v1, Lcom/google/mlkit/nl/languageid/internal/a;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/g;->c(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "No delegate creator registered."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    sget-object v1, Lcom/google/mlkit/nl/languageid/internal/e;->a:Lcom/google/mlkit/nl/languageid/internal/e;

    .line 3
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    new-instance v1, Lcom/google/mlkit/nl/languageid/internal/i;

    const-class v2, Landroid/content/Context;

    .line 5
    invoke-interface {p1, v2}, Lcom/google/firebase/components/g;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/languageid/internal/a;

    invoke-direct {v1, p1, v0}, Lcom/google/mlkit/nl/languageid/internal/i;-><init>(Landroid/content/Context;Lcom/google/mlkit/nl/languageid/internal/a;)V

    return-object v1
.end method
