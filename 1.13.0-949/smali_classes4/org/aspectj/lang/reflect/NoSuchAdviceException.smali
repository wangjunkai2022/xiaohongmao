.class public Lorg/aspectj/lang/reflect/NoSuchAdviceException;
.super Ljava/lang/Exception;
.source "NoSuchAdviceException.java"


# static fields
.field private static final b:J = 0x2d31373336313830L


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/aspectj/lang/reflect/NoSuchAdviceException;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/lang/reflect/NoSuchAdviceException;->a:Ljava/lang/String;

    return-object v0
.end method
