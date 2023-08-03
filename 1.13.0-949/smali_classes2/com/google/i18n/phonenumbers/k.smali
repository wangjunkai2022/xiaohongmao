.class final Lcom/google/i18n/phonenumbers/k;
.super Ljava/lang/Object;
.source "SingleFileMetadataSourceImpl.java"

# interfaces
.implements Lcom/google/i18n/phonenumbers/f;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/i18n/phonenumbers/d;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/i18n/phonenumbers/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/i18n/phonenumbers/d;)V
    .locals 1

    const-string v0, "/com/google/i18n/phonenumbers/data/SingleFilePhoneNumberMetadataProto"

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/google/i18n/phonenumbers/k;-><init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/d;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/k;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/k;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/k;->b:Lcom/google/i18n/phonenumbers/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/k;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/k;->b:Lcom/google/i18n/phonenumbers/d;

    invoke-static {v0, v1, v2}, Lcom/google/i18n/phonenumbers/e;->f(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/google/i18n/phonenumbers/d;)Lcom/google/i18n/phonenumbers/e$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/e$b;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/k;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/k;->b:Lcom/google/i18n/phonenumbers/d;

    invoke-static {v0, v1, v2}, Lcom/google/i18n/phonenumbers/e;->f(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/google/i18n/phonenumbers/d;)Lcom/google/i18n/phonenumbers/e$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/e$b;->a(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p1

    return-object p1
.end method
