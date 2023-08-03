.class public final synthetic Lq3/c;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Lcom/google/firebase/components/j;


# static fields
.field public static final synthetic a:Lq3/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lq3/c;

    invoke-direct {v0}, Lq3/c;-><init>()V

    sput-object v0, Lq3/c;->a:Lq3/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/components/g;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lcom/google/mlkit/common/model/e$a;

    invoke-interface {p1, v0}, Lcom/google/firebase/components/g;->c(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    new-instance v0, Lcom/google/mlkit/common/model/e;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/mlkit/common/model/e;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
