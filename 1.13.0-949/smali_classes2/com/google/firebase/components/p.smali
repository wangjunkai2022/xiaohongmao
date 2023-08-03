.class final synthetic Lcom/google/firebase/components/p;
.super Ljava/lang/Object;
.source "ComponentRuntime.java"

# interfaces
.implements Lo3/b;


# static fields
.field private static final a:Lcom/google/firebase/components/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/components/p;

    invoke-direct {v0}, Lcom/google/firebase/components/p;-><init>()V

    sput-object v0, Lcom/google/firebase/components/p;->a:Lcom/google/firebase/components/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo3/b;
    .locals 1

    sget-object v0, Lcom/google/firebase/components/p;->a:Lcom/google/firebase/components/p;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
