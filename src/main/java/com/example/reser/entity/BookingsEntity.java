package com.example.reser.entity;

import javax.persistence.*;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "bookings", schema = "userlogin")
public class BookingsEntity {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "booking_id")
    private int bookingId;
    @Basic
    @Column(name = "date_time")
    private Timestamp dateTime;
    @Basic
    @Column(name = "checkIn")
    private Date checkIn;
    @Basic
    @Column(name = "checkOut")
    private Date checkOut;
    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "user_id", nullable = false)
    private UserEntity UserId;

    @ManyToOne
    @JoinColumn(name = "roomNo", referencedColumnName = "roomNo", nullable = false)
    private RoomsEntity RoomNoId;
    @Basic
    @Column(name = "reserved_Status")
    private String reservedStatus;
    @Basic
    @Column(name = "total_days")
    private int totalDays;
    @Basic
    @Column(name = "price")
    private Double price;

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

    public Date getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(Date checkIn) {
        this.checkIn = checkIn;
    }

    public Date getCheckOut() {
        return checkOut;
    }

    public void setCheckOut(Date checkOut) {
        this.checkOut = checkOut;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BookingsEntity that = (BookingsEntity) o;
        return bookingId == that.bookingId && Objects.equals(dateTime, that.dateTime) && Objects.equals(checkIn, that.checkIn) && Objects.equals(checkOut, that.checkOut);
    }

    @Override
    public int hashCode() {
        return Objects.hash(bookingId, dateTime, checkIn, checkOut);
    }

    public UserEntity getUserId() {
        return UserId;
    }

    public void setUserId(UserEntity userId) {
        UserId = userId;
    }

    public RoomsEntity getRoomNoId() {
        return RoomNoId;
    }

    public void setRoomNoId(RoomsEntity roomNoId) {
        RoomNoId = roomNoId;
    }

    public String getReservedStatus() {
        return reservedStatus;
    }

    public void setReservedStatus(String reservedStatus) {
        this.reservedStatus = reservedStatus;
    }

    public int getTotalDays() {
        return totalDays;
    }

    public void setTotalDays(int totalDays) {
        this.totalDays = totalDays;
    }

    public Double getPrice() {
        return price;
    }


    public void setPrice(Double price) {
        this.price = price;
    }
}
