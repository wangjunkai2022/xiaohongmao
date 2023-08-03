.class public final synthetic Lq3/h;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Lcom/google/firebase/components/j;


# static fields
.field public static final synthetic a:Lq3/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lq3/h;

    invoke-direct {v0}, Lq3/h;-><init>()V

    sput-object v0, Lq3/h;->a:Lq3/h;

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

    new-instance v0, Lcom/google/mlkit/common/model/e$a;

    const-class v1, Lcom/google/mlkit/common/model/a;

    const-class v2, Lcom/google/mlkit/common/internal/model/j;

    invoke-interface {p1, v2}, Lcom/google/firebase/components/g;->d(Ljava/lang/Class;)Lo3/b;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/mlkit/common/model/e$a;-><init>(Ljava/lang/Class;Lo3/b;)V

    return-object v0
.end method
