.class public final synthetic Lq3/d;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Lcom/google/firebase/components/j;


# static fields
.field public static final synthetic a:Lq3/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lq3/d;

    invoke-direct {v0}, Lq3/d;-><init>()V

    sput-object v0, Lq3/d;->a:Lq3/d;

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

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/f;

    const-class v1, Lcom/google/mlkit/common/sdkinternal/l;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/g;->d(Ljava/lang/Class;)Lo3/b;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/mlkit/common/sdkinternal/f;-><init>(Lo3/b;)V

    return-object v0
.end method
