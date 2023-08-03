.class final synthetic Lcom/google/firebase/encoders/json/b;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Lcom/google/firebase/encoders/d;


# static fields
.field private static final a:Lcom/google/firebase/encoders/json/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/encoders/json/b;

    invoke-direct {v0}, Lcom/google/firebase/encoders/json/b;-><init>()V

    sput-object v0, Lcom/google/firebase/encoders/json/b;->a:Lcom/google/firebase/encoders/json/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/firebase/encoders/d;
    .locals 1

    sget-object v0, Lcom/google/firebase/encoders/json/b;->a:Lcom/google/firebase/encoders/json/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/firebase/encoders/e;

    invoke-static {p1, p2}, Lcom/google/firebase/encoders/json/e;->j(Ljava/lang/Object;Lcom/google/firebase/encoders/e;)V

    return-void
.end method
