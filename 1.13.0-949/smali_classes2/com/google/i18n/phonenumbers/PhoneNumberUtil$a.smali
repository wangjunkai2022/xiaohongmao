.class Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->p(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/i18n/phonenumbers/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field final synthetic d:J

.field final synthetic e:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method constructor <init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;->e:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    iput-object p2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;->a:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;->c:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    iput-wide p5, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/i18n/phonenumbers/h;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/google/i18n/phonenumbers/i;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;->e:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;->a:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;->c:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    iget-wide v5, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$a;->d:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/i18n/phonenumbers/i;-><init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V

    return-object v7
.end method
