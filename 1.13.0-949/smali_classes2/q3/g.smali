.class public final synthetic Lq3/g;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Lcom/google/firebase/components/j;


# static fields
.field public static final synthetic a:Lq3/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lq3/g;

    invoke-direct {v0}, Lq3/g;-><init>()V

    sput-object v0, Lq3/g;->a:Lq3/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/components/g;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/mlkit/common/internal/model/j;

    const-class v1, Lcom/google/mlkit/common/sdkinternal/k;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/g;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/common/sdkinternal/k;

    invoke-direct {v0, p1}, Lcom/google/mlkit/common/internal/model/j;-><init>(Lcom/google/mlkit/common/sdkinternal/k;)V

    return-object v0
.end method
