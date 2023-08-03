.class final synthetic Lcom/google/firebase/components/a0;
.super Ljava/lang/Object;
.source "OptionalProvider.java"

# interfaces
.implements Lo3/b;


# static fields
.field private static final a:Lcom/google/firebase/components/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/components/a0;

    invoke-direct {v0}, Lcom/google/firebase/components/a0;-><init>()V

    sput-object v0, Lcom/google/firebase/components/a0;->a:Lcom/google/firebase/components/a0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo3/b;
    .locals 1

    sget-object v0, Lcom/google/firebase/components/a0;->a:Lcom/google/firebase/components/a0;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/firebase/components/b0;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
